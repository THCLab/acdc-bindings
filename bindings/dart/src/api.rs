use acdc::attributes::InlineAttributes;
pub use acdc::Attestation;
use anyhow::{Context, Result};
use flutter_rust_bridge::RustOpaque;
use said::version::Encode;

pub struct ACDC(pub RustOpaque<Attestation>);

impl ACDC {
    pub fn issue_public_untargeted(
        issuer: String,
        schema: String,
        attributes: String,
    ) -> Result<ACDC> {
        let attributes: InlineAttributes = attributes
            .parse()
            .with_context(|| "Attributes must be valid JSON".to_string())?;
        let attestation = Attestation::new_public_untargeted(
            &issuer,
            schema
                .parse()
                .with_context(|| "Invalid schema SAI".to_string())?,
            attributes,
        );
        Ok(ACDC(RustOpaque::new(attestation)))
    }

    pub fn issue_public_targeted(
        issuer: String,
        target: String,
        schema: String,
        attributes: String,
    ) -> Result<ACDC> {
        let attributes: InlineAttributes = attributes
            .parse()
            .with_context(|| "Attributes must be valid JSON".to_string())?;
        let attestation = Attestation::new_public_targeted(
            &issuer,
            &target,
            schema
                .parse()
                .with_context(|| "Invalid schema SAI".to_string())?,
            attributes,
        );
        Ok(ACDC(RustOpaque::new(attestation)))
    }

    pub fn issue_private_untargeted(
        issuer: String,
        schema: String,
        attributes: String,
    ) -> Result<ACDC> {
        let attributes: InlineAttributes = attributes
            .parse()
            .with_context(|| "Attributes must be valid JSON".to_string())?;
        let attestation = Attestation::new_private_untargeted(
            &issuer,
            schema
                .parse()
                .with_context(|| "Invalid schema SAI".to_string())?,
            attributes,
        );
        Ok(ACDC(RustOpaque::new(attestation)))
    }

    pub fn issue_private_targeted(
        issuer: String,
        target: String,
        schema: String,
        attributes: String,
    ) -> Result<ACDC> {
        let attributes: InlineAttributes = attributes
            .parse()
            .with_context(|| "Attributes must be valid JSON".to_string())?;
        let attestation = Attestation::new_private_targeted(
            &issuer,
            &target,
            schema
                .parse()
                .with_context(|| "Invalid schema SAI".to_string())?,
            attributes,
        );
        Ok(ACDC(RustOpaque::new(attestation)))
    }

    pub fn encode(&self) -> Result<String> {
        Ok(String::from_utf8(self.0.encode()?)?)
    }

    pub fn get_issuer(&self) -> String {
        self.0.issuer.clone()
    }

    pub fn get_attributes(&self) -> Result<String> {
        Ok(match &self.0.attrs {
            acdc::Attributes::Inline(data) => serde_json::to_string(&data.data)?,
            acdc::Attributes::External(data) => data.to_string(),
        })
    }

    pub fn get_schema(&self) -> String {
        self.0.schema.to_string()
    }

    pub fn get_digest(&self) -> String {
        self.0.digest.as_ref().expect("Missing digest").to_string()
    }

    pub fn parse(stream: String) -> Result<ACDC> {
        let att: Attestation =
            serde_json::from_str(&stream).context("Provided stream is invalid")?;
        Ok(ACDC(RustOpaque::new(att)))
    }
}
