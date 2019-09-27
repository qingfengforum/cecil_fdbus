// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: common.base.Token.proto

#include "common.base.Token.pb.h"

#include <algorithm>

#include <google/protobuf/io/coded_stream.h>
#include <google/protobuf/extension_set.h>
#include <google/protobuf/wire_format_lite.h>
#include <google/protobuf/io/zero_copy_stream_impl_lite.h>
// @@protoc_insertion_point(includes)
#include <google/protobuf/port_def.inc>
namespace NFdbBase {
class FdbMsgTokensDefaultTypeInternal {
 public:
  ::PROTOBUF_NAMESPACE_ID::internal::ExplicitlyConstructed<FdbMsgTokens> _instance;
} _FdbMsgTokens_default_instance_;
}  // namespace NFdbBase
static void InitDefaultsscc_info_FdbMsgTokens_common_2ebase_2eToken_2eproto() {
  GOOGLE_PROTOBUF_VERIFY_VERSION;

  {
    void* ptr = &::NFdbBase::_FdbMsgTokens_default_instance_;
    new (ptr) ::NFdbBase::FdbMsgTokens();
    ::PROTOBUF_NAMESPACE_ID::internal::OnShutdownDestroyMessage(ptr);
  }
  ::NFdbBase::FdbMsgTokens::InitAsDefaultInstance();
}

::PROTOBUF_NAMESPACE_ID::internal::SCCInfo<0> scc_info_FdbMsgTokens_common_2ebase_2eToken_2eproto =
    {{ATOMIC_VAR_INIT(::PROTOBUF_NAMESPACE_ID::internal::SCCInfoBase::kUninitialized), 0, 0, InitDefaultsscc_info_FdbMsgTokens_common_2ebase_2eToken_2eproto}, {}};

namespace NFdbBase {
bool FdbCryptoAlgorithm_IsValid(int value) {
  switch (value) {
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    case 10:
      return true;
    default:
      return false;
  }
}

static ::PROTOBUF_NAMESPACE_ID::internal::ExplicitlyConstructed<std::string> FdbCryptoAlgorithm_strings[10] = {};

static const char FdbCryptoAlgorithm_names[] =
  "CRYPTO_AES128"
  "CRYPTO_AES192"
  "CRYPTO_AES256"
  "CRYPTO_ECC160"
  "CRYPTO_ECC224"
  "CRYPTO_ECC256"
  "CRYPTO_NONE"
  "CRYPTO_RSA1024"
  "CRYPTO_RSA2048"
  "CRYPTO_RSA3072";

static const ::PROTOBUF_NAMESPACE_ID::internal::EnumEntry FdbCryptoAlgorithm_entries[] = {
  { {FdbCryptoAlgorithm_names + 0, 13}, 2 },
  { {FdbCryptoAlgorithm_names + 13, 13}, 3 },
  { {FdbCryptoAlgorithm_names + 26, 13}, 4 },
  { {FdbCryptoAlgorithm_names + 39, 13}, 8 },
  { {FdbCryptoAlgorithm_names + 52, 13}, 9 },
  { {FdbCryptoAlgorithm_names + 65, 13}, 10 },
  { {FdbCryptoAlgorithm_names + 78, 11}, 1 },
  { {FdbCryptoAlgorithm_names + 89, 14}, 5 },
  { {FdbCryptoAlgorithm_names + 103, 14}, 6 },
  { {FdbCryptoAlgorithm_names + 117, 14}, 7 },
};

static const int FdbCryptoAlgorithm_entries_by_number[] = {
  6, // 1 -> CRYPTO_NONE
  0, // 2 -> CRYPTO_AES128
  1, // 3 -> CRYPTO_AES192
  2, // 4 -> CRYPTO_AES256
  7, // 5 -> CRYPTO_RSA1024
  8, // 6 -> CRYPTO_RSA2048
  9, // 7 -> CRYPTO_RSA3072
  3, // 8 -> CRYPTO_ECC160
  4, // 9 -> CRYPTO_ECC224
  5, // 10 -> CRYPTO_ECC256
};

const std::string& FdbCryptoAlgorithm_Name(
    FdbCryptoAlgorithm value) {
  static const bool dummy =
      ::PROTOBUF_NAMESPACE_ID::internal::InitializeEnumStrings(
          FdbCryptoAlgorithm_entries,
          FdbCryptoAlgorithm_entries_by_number,
          10, FdbCryptoAlgorithm_strings);
  (void) dummy;
  int idx = ::PROTOBUF_NAMESPACE_ID::internal::LookUpEnumName(
      FdbCryptoAlgorithm_entries,
      FdbCryptoAlgorithm_entries_by_number,
      10, value);
  return idx == -1 ? ::PROTOBUF_NAMESPACE_ID::internal::GetEmptyString() :
                     FdbCryptoAlgorithm_strings[idx].get();
}
bool FdbCryptoAlgorithm_Parse(
    const std::string& name, FdbCryptoAlgorithm* value) {
  int int_value;
  bool success = ::PROTOBUF_NAMESPACE_ID::internal::LookUpEnumValue(
      FdbCryptoAlgorithm_entries, 10, name, &int_value);
  if (success) {
    *value = static_cast<FdbCryptoAlgorithm>(int_value);
  }
  return success;
}

// ===================================================================

void FdbMsgTokens::InitAsDefaultInstance() {
}
class FdbMsgTokens::_Internal {
 public:
  using HasBits = decltype(std::declval<FdbMsgTokens>()._has_bits_);
  static void set_has_crypto_algorithm(HasBits* has_bits) {
    (*has_bits)[0] |= 1u;
  }
};

FdbMsgTokens::FdbMsgTokens()
  : ::PROTOBUF_NAMESPACE_ID::MessageLite(), _internal_metadata_(nullptr) {
  SharedCtor();
  // @@protoc_insertion_point(constructor:NFdbBase.FdbMsgTokens)
}
FdbMsgTokens::FdbMsgTokens(const FdbMsgTokens& from)
  : ::PROTOBUF_NAMESPACE_ID::MessageLite(),
      _internal_metadata_(nullptr),
      _has_bits_(from._has_bits_),
      tokens_(from.tokens_) {
  _internal_metadata_.MergeFrom(from._internal_metadata_);
  crypto_algorithm_ = from.crypto_algorithm_;
  // @@protoc_insertion_point(copy_constructor:NFdbBase.FdbMsgTokens)
}

void FdbMsgTokens::SharedCtor() {
  ::PROTOBUF_NAMESPACE_ID::internal::InitSCC(&scc_info_FdbMsgTokens_common_2ebase_2eToken_2eproto.base);
  crypto_algorithm_ = 1;
}

FdbMsgTokens::~FdbMsgTokens() {
  // @@protoc_insertion_point(destructor:NFdbBase.FdbMsgTokens)
  SharedDtor();
}

void FdbMsgTokens::SharedDtor() {
}

void FdbMsgTokens::SetCachedSize(int size) const {
  _cached_size_.Set(size);
}
const FdbMsgTokens& FdbMsgTokens::default_instance() {
  ::PROTOBUF_NAMESPACE_ID::internal::InitSCC(&::scc_info_FdbMsgTokens_common_2ebase_2eToken_2eproto.base);
  return *internal_default_instance();
}


void FdbMsgTokens::Clear() {
// @@protoc_insertion_point(message_clear_start:NFdbBase.FdbMsgTokens)
  ::PROTOBUF_NAMESPACE_ID::uint32 cached_has_bits = 0;
  // Prevent compiler warnings about cached_has_bits being unused
  (void) cached_has_bits;

  tokens_.Clear();
  crypto_algorithm_ = 1;
  _has_bits_.Clear();
  _internal_metadata_.Clear();
}

const char* FdbMsgTokens::_InternalParse(const char* ptr, ::PROTOBUF_NAMESPACE_ID::internal::ParseContext* ctx) {
#define CHK_(x) if (PROTOBUF_PREDICT_FALSE(!(x))) goto failure
  _Internal::HasBits has_bits{};
  while (!ctx->Done(&ptr)) {
    ::PROTOBUF_NAMESPACE_ID::uint32 tag;
    ptr = ::PROTOBUF_NAMESPACE_ID::internal::ReadTag(ptr, &tag);
    CHK_(ptr);
    switch (tag >> 3) {
      // repeated string tokens = 1;
      case 1:
        if (PROTOBUF_PREDICT_TRUE(static_cast<::PROTOBUF_NAMESPACE_ID::uint8>(tag) == 10)) {
          ptr -= 1;
          do {
            ptr += 1;
            ptr = ::PROTOBUF_NAMESPACE_ID::internal::InlineGreedyStringParser(_internal_add_tokens(), ptr, ctx);
            CHK_(ptr);
            if (!ctx->DataAvailable(ptr)) break;
          } while (::PROTOBUF_NAMESPACE_ID::internal::ExpectTag<10>(ptr));
        } else goto handle_unusual;
        continue;
      // required .NFdbBase.FdbCryptoAlgorithm crypto_algorithm = 2;
      case 2:
        if (PROTOBUF_PREDICT_TRUE(static_cast<::PROTOBUF_NAMESPACE_ID::uint8>(tag) == 16)) {
          ::PROTOBUF_NAMESPACE_ID::uint64 val = ::PROTOBUF_NAMESPACE_ID::internal::ReadVarint(&ptr);
          CHK_(ptr);
          if (PROTOBUF_PREDICT_TRUE(::NFdbBase::FdbCryptoAlgorithm_IsValid(val))) {
            _internal_set_crypto_algorithm(static_cast<::NFdbBase::FdbCryptoAlgorithm>(val));
          } else {
            ::PROTOBUF_NAMESPACE_ID::internal::WriteVarint(2, val, mutable_unknown_fields());
          }
        } else goto handle_unusual;
        continue;
      default: {
      handle_unusual:
        if ((tag & 7) == 4 || tag == 0) {
          ctx->SetLastTag(tag);
          goto success;
        }
        ptr = UnknownFieldParse(tag, &_internal_metadata_, ptr, ctx);
        CHK_(ptr != nullptr);
        continue;
      }
    }  // switch
  }  // while
success:
  _has_bits_.Or(has_bits);
  return ptr;
failure:
  ptr = nullptr;
  goto success;
#undef CHK_
}

::PROTOBUF_NAMESPACE_ID::uint8* FdbMsgTokens::InternalSerializeWithCachedSizesToArray(
    ::PROTOBUF_NAMESPACE_ID::uint8* target, ::PROTOBUF_NAMESPACE_ID::io::EpsCopyOutputStream* stream) const {
  // @@protoc_insertion_point(serialize_to_array_start:NFdbBase.FdbMsgTokens)
  ::PROTOBUF_NAMESPACE_ID::uint32 cached_has_bits = 0;
  (void) cached_has_bits;

  // repeated string tokens = 1;
  for (int i = 0, n = this->_internal_tokens_size(); i < n; i++) {
    const auto& s = this->_internal_tokens(i);
    target = stream->WriteString(1, s, target);
  }

  cached_has_bits = _has_bits_[0];
  // required .NFdbBase.FdbCryptoAlgorithm crypto_algorithm = 2;
  if (cached_has_bits & 0x00000001u) {
    target = stream->EnsureSpace(target);
    target = ::PROTOBUF_NAMESPACE_ID::internal::WireFormatLite::WriteEnumToArray(
      2, this->_internal_crypto_algorithm(), target);
  }

  if (PROTOBUF_PREDICT_FALSE(_internal_metadata_.have_unknown_fields())) {
    target = stream->WriteRaw(_internal_metadata_.unknown_fields().data(),
        static_cast<int>(_internal_metadata_.unknown_fields().size()), target);
  }
  // @@protoc_insertion_point(serialize_to_array_end:NFdbBase.FdbMsgTokens)
  return target;
}

size_t FdbMsgTokens::ByteSizeLong() const {
// @@protoc_insertion_point(message_byte_size_start:NFdbBase.FdbMsgTokens)
  size_t total_size = 0;

  // required .NFdbBase.FdbCryptoAlgorithm crypto_algorithm = 2;
  if (has_crypto_algorithm()) {
    total_size += 1 +
      ::PROTOBUF_NAMESPACE_ID::internal::WireFormatLite::EnumSize(this->_internal_crypto_algorithm());
  }
  ::PROTOBUF_NAMESPACE_ID::uint32 cached_has_bits = 0;
  // Prevent compiler warnings about cached_has_bits being unused
  (void) cached_has_bits;

  // repeated string tokens = 1;
  total_size += 1 *
      ::PROTOBUF_NAMESPACE_ID::internal::FromIntSize(tokens_.size());
  for (int i = 0, n = tokens_.size(); i < n; i++) {
    total_size += ::PROTOBUF_NAMESPACE_ID::internal::WireFormatLite::StringSize(
      tokens_.Get(i));
  }

  if (PROTOBUF_PREDICT_FALSE(_internal_metadata_.have_unknown_fields())) {
    total_size += _internal_metadata_.unknown_fields().size();
  }
  int cached_size = ::PROTOBUF_NAMESPACE_ID::internal::ToCachedSize(total_size);
  SetCachedSize(cached_size);
  return total_size;
}

void FdbMsgTokens::CheckTypeAndMergeFrom(
    const ::PROTOBUF_NAMESPACE_ID::MessageLite& from) {
  MergeFrom(*::PROTOBUF_NAMESPACE_ID::internal::DownCast<const FdbMsgTokens*>(
      &from));
}

void FdbMsgTokens::MergeFrom(const FdbMsgTokens& from) {
// @@protoc_insertion_point(class_specific_merge_from_start:NFdbBase.FdbMsgTokens)
  GOOGLE_DCHECK_NE(&from, this);
  _internal_metadata_.MergeFrom(from._internal_metadata_);
  ::PROTOBUF_NAMESPACE_ID::uint32 cached_has_bits = 0;
  (void) cached_has_bits;

  tokens_.MergeFrom(from.tokens_);
  if (from._internal_has_crypto_algorithm()) {
    _internal_set_crypto_algorithm(from._internal_crypto_algorithm());
  }
}

void FdbMsgTokens::CopyFrom(const FdbMsgTokens& from) {
// @@protoc_insertion_point(class_specific_copy_from_start:NFdbBase.FdbMsgTokens)
  if (&from == this) return;
  Clear();
  MergeFrom(from);
}

bool FdbMsgTokens::IsInitialized() const {
  if ((_has_bits_[0] & 0x00000001) != 0x00000001) return false;
  return true;
}

void FdbMsgTokens::InternalSwap(FdbMsgTokens* other) {
  using std::swap;
  _internal_metadata_.Swap(&other->_internal_metadata_);
  swap(_has_bits_[0], other->_has_bits_[0]);
  tokens_.InternalSwap(&other->tokens_);
  swap(crypto_algorithm_, other->crypto_algorithm_);
}

std::string FdbMsgTokens::GetTypeName() const {
  return "NFdbBase.FdbMsgTokens";
}


// @@protoc_insertion_point(namespace_scope)
}  // namespace NFdbBase
PROTOBUF_NAMESPACE_OPEN
template<> PROTOBUF_NOINLINE ::NFdbBase::FdbMsgTokens* Arena::CreateMaybeMessage< ::NFdbBase::FdbMsgTokens >(Arena* arena) {
  return Arena::CreateInternal< ::NFdbBase::FdbMsgTokens >(arena);
}
PROTOBUF_NAMESPACE_CLOSE

// @@protoc_insertion_point(global_scope)
#include <google/protobuf/port_undef.inc>