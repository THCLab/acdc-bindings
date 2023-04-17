pub use acdc::Attestation;
use anyhow::{Context, Result};
use flutter_rust_bridge::RustOpaque;
use indexmap::IndexMap;
use said::derivation::HashFunctionCode;

pub struct ACDC(pub RustOpaque<Attestation>);

impl ACDC {
    pub fn new(issuer: String, schema: String, attributes: String) -> Result<ACDC> {
        let attributes: IndexMap<String, String> = serde_json::from_str(&attributes)
            .with_context(|| "Attributes must be valid JSON".to_string())?;
        // TODO Stop using default hash function algorithm
        let derivation = HashFunctionCode::Blake3_256;
        let attestation = Attestation::new(
            &issuer,
            schema
                .parse()
                .with_context(|| "Invalid schema SAI".to_string())?,
            derivation.into(),
            acdc::Attributes::Inline(attributes),
        );
        Ok(ACDC(RustOpaque::new(attestation)))
    }

    pub fn encode(&self) -> Result<String> {
        Ok(String::from_utf8(self.0.encode()?)?)
    }

    pub fn get_issuer(&self) -> String {
        self.0.issuer.clone()
    }

    pub fn get_data(&self) -> Result<String> {
        Ok(match &self.0.attrs {
            acdc::Attributes::Inline(data) => serde_json::to_string(&data)?,
            acdc::Attributes::External(data) => data.to_string(),
        })
    }

    pub fn get_schema(&self) -> String {
        self.0.schema.to_string()
    }

    pub fn get_digest(&self) -> String {
        self.0.digest.to_string()
    }

    pub fn parse(stream: String) -> Result<ACDC> {
        let att: Attestation =
            serde_json::from_str(&stream).context("Provided stream is invalid")?;
        Ok(ACDC(RustOpaque::new(att)))
    }
}
