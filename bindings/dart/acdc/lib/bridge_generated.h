#include <stdbool.h>
#include <stdint.h>
#include <stdlib.h>
typedef struct _Dart_Handle* Dart_Handle;

typedef struct DartCObject DartCObject;

typedef int64_t DartPort;

typedef bool (*DartPostCObjectFnType)(DartPort port_id, void *message);

typedef struct wire_uint_8_list {
  uint8_t *ptr;
  int32_t len;
} wire_uint_8_list;

typedef struct wire_Attestation {
  const void *ptr;
} wire_Attestation;

typedef struct wire_ACDC {
  struct wire_Attestation field0;
} wire_ACDC;

typedef struct DartCObject *WireSyncReturn;

void store_dart_post_cobject(DartPostCObjectFnType ptr);

Dart_Handle get_dart_object(uintptr_t ptr);

void drop_dart_object(uintptr_t ptr);

uintptr_t new_dart_opaque(Dart_Handle handle);

intptr_t init_frb_dart_api_dl(void *obj);

void wire_issue_public_untargeted__static_method__ACDC(int64_t port_,
                                                       struct wire_uint_8_list *issuer,
                                                       struct wire_uint_8_list *registry_id,
                                                       struct wire_uint_8_list *schema,
                                                       struct wire_uint_8_list *attributes);

void wire_issue_public_targeted__static_method__ACDC(int64_t port_,
                                                     struct wire_uint_8_list *issuer,
                                                     struct wire_uint_8_list *registry_id,
                                                     struct wire_uint_8_list *target,
                                                     struct wire_uint_8_list *schema,
                                                     struct wire_uint_8_list *attributes);

void wire_issue_private_untargeted__static_method__ACDC(int64_t port_,
                                                        struct wire_uint_8_list *issuer,
                                                        struct wire_uint_8_list *schema,
                                                        struct wire_uint_8_list *registry_id,
                                                        struct wire_uint_8_list *attributes);

void wire_issue_private_targeted__static_method__ACDC(int64_t port_,
                                                      struct wire_uint_8_list *issuer,
                                                      struct wire_uint_8_list *registry_id,
                                                      struct wire_uint_8_list *target,
                                                      struct wire_uint_8_list *schema,
                                                      struct wire_uint_8_list *attributes);

void wire_encode__method__ACDC(int64_t port_, struct wire_ACDC *that);

void wire_get_issuer__method__ACDC(int64_t port_, struct wire_ACDC *that);

void wire_get_attributes__method__ACDC(int64_t port_, struct wire_ACDC *that);

void wire_get_schema__method__ACDC(int64_t port_, struct wire_ACDC *that);

void wire_get_digest__method__ACDC(int64_t port_, struct wire_ACDC *that);

void wire_parse__static_method__ACDC(int64_t port_, struct wire_uint_8_list *stream);

struct wire_Attestation new_Attestation(void);

struct wire_ACDC *new_box_autoadd_acdc_0(void);

struct wire_uint_8_list *new_uint_8_list_0(int32_t len);

void drop_opaque_Attestation(const void *ptr);

const void *share_opaque_Attestation(const void *ptr);

void free_WireSyncReturn(WireSyncReturn ptr);

static int64_t dummy_method_to_enforce_bundling(void) {
    int64_t dummy_var = 0;
    dummy_var ^= ((int64_t) (void*) wire_issue_public_untargeted__static_method__ACDC);
    dummy_var ^= ((int64_t) (void*) wire_issue_public_targeted__static_method__ACDC);
    dummy_var ^= ((int64_t) (void*) wire_issue_private_untargeted__static_method__ACDC);
    dummy_var ^= ((int64_t) (void*) wire_issue_private_targeted__static_method__ACDC);
    dummy_var ^= ((int64_t) (void*) wire_encode__method__ACDC);
    dummy_var ^= ((int64_t) (void*) wire_get_issuer__method__ACDC);
    dummy_var ^= ((int64_t) (void*) wire_get_attributes__method__ACDC);
    dummy_var ^= ((int64_t) (void*) wire_get_schema__method__ACDC);
    dummy_var ^= ((int64_t) (void*) wire_get_digest__method__ACDC);
    dummy_var ^= ((int64_t) (void*) wire_parse__static_method__ACDC);
    dummy_var ^= ((int64_t) (void*) new_Attestation);
    dummy_var ^= ((int64_t) (void*) new_box_autoadd_acdc_0);
    dummy_var ^= ((int64_t) (void*) new_uint_8_list_0);
    dummy_var ^= ((int64_t) (void*) drop_opaque_Attestation);
    dummy_var ^= ((int64_t) (void*) share_opaque_Attestation);
    dummy_var ^= ((int64_t) (void*) free_WireSyncReturn);
    dummy_var ^= ((int64_t) (void*) store_dart_post_cobject);
    dummy_var ^= ((int64_t) (void*) get_dart_object);
    dummy_var ^= ((int64_t) (void*) drop_dart_object);
    dummy_var ^= ((int64_t) (void*) new_dart_opaque);
    return dummy_var;
}
