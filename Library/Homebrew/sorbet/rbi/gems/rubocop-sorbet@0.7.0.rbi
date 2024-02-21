# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `rubocop-sorbet` gem.
# Please instead update this file by running `bin/tapioca gem rubocop-sorbet`.

module RuboCop; end
module RuboCop::Cop; end
RuboCop::Cop::IgnoredMethods = RuboCop::Cop::AllowedMethods
RuboCop::Cop::IgnoredPattern = RuboCop::Cop::AllowedPattern
module RuboCop::Cop::Sorbet; end

class RuboCop::Cop::Sorbet::AllowIncompatibleOverride < ::RuboCop::Cop::Cop
  def allow_incompatible?(param0); end
  def allow_incompatible_override?(param0 = T.unsafe(nil)); end
  def not_nil?(node); end
  def on_send(node); end
  def sig?(param0); end
end

class RuboCop::Cop::Sorbet::BindingConstantWithoutTypeAlias < ::RuboCop::Cop::Cop
  def autocorrect(node); end
  def binding_unaliased_type?(param0 = T.unsafe(nil)); end
  def dynamic_type_creation_with_block?(param0 = T.unsafe(nil)); end
  def generic_parameter_decl_block_call?(param0 = T.unsafe(nil)); end
  def generic_parameter_decl_call?(param0 = T.unsafe(nil)); end
  def method_needing_aliasing_on_t?(param0); end
  def not_dynamic_type_creation_with_block?(node); end
  def not_generic_parameter_decl?(node); end
  def not_nil?(node); end
  def not_t_let?(node); end
  def on_casgn(node); end
  def t_let?(param0 = T.unsafe(nil)); end
  def using_deprecated_type_alias_syntax?(param0 = T.unsafe(nil)); end
  def using_type_alias?(param0 = T.unsafe(nil)); end
end

class RuboCop::Cop::Sorbet::CallbackConditionalsBinding < ::RuboCop::Cop::Cop
  def autocorrect(node); end
  def on_send(node); end
end

RuboCop::Cop::Sorbet::CallbackConditionalsBinding::CALLBACKS = T.let(T.unsafe(nil), Array)

class RuboCop::Cop::Sorbet::CheckedTrueInSignature < ::RuboCop::Cop::Sorbet::SignatureCop
  include ::RuboCop::Cop::RangeHelp

  def offending_node(param0); end
  def on_signature(node); end
end

RuboCop::Cop::Sorbet::CheckedTrueInSignature::MESSAGE = T.let(T.unsafe(nil), String)

class RuboCop::Cop::Sorbet::ConstantsFromStrings < ::RuboCop::Cop::Cop
  def constant_from_string?(param0 = T.unsafe(nil)); end
  def on_send(node); end
end

class RuboCop::Cop::Sorbet::EmptyLineAfterSig < ::RuboCop::Cop::Sorbet::SignatureCop
  include ::RuboCop::Cop::RangeHelp

  def autocorrect(node); end
  def on_signature(node); end

  private

  def next_method(node); end
end

class RuboCop::Cop::Sorbet::EnforceSigilOrder < ::RuboCop::Cop::Sorbet::ValidSigil
  include ::RuboCop::Cop::RangeHelp

  def autocorrect(_node); end
  def investigate(processed_source); end

  protected

  def check_magic_comments_order(tokens); end
  def extract_magic_comments(processed_source); end
end

RuboCop::Cop::Sorbet::EnforceSigilOrder::CODING_REGEX = T.let(T.unsafe(nil), Regexp)
RuboCop::Cop::Sorbet::EnforceSigilOrder::FROZEN_REGEX = T.let(T.unsafe(nil), Regexp)
RuboCop::Cop::Sorbet::EnforceSigilOrder::INDENT_REGEX = T.let(T.unsafe(nil), Regexp)
RuboCop::Cop::Sorbet::EnforceSigilOrder::MAGIC_REGEX = T.let(T.unsafe(nil), Regexp)
RuboCop::Cop::Sorbet::EnforceSigilOrder::PREFERRED_ORDER = T.let(T.unsafe(nil), Hash)

class RuboCop::Cop::Sorbet::EnforceSignatures < ::RuboCop::Cop::Sorbet::SignatureCop
  def initialize(config = T.unsafe(nil), options = T.unsafe(nil)); end

  def accessor?(param0 = T.unsafe(nil)); end
  def autocorrect(node); end
  def on_def(node); end
  def on_defs(node); end
  def on_send(node); end
  def on_signature(node); end
  def scope(node); end

  private

  def check_node(node); end
  def param_type_placeholder; end
  def return_type_placeholder; end
end

class RuboCop::Cop::Sorbet::EnforceSignatures::SigSuggestion
  def initialize(indent, param_placeholder, return_placeholder); end

  def params; end
  def params=(_arg0); end
  def returns; end
  def returns=(_arg0); end
  def to_autocorrect; end

  private

  def generate_params; end
  def generate_return; end
end

class RuboCop::Cop::Sorbet::EnforceSingleSigil < ::RuboCop::Cop::Sorbet::ValidSigil
  include ::RuboCop::Cop::RangeHelp

  def autocorrect(_node); end
  def investigate(processed_source); end

  protected

  def extract_all_sigils(processed_source); end
end

class RuboCop::Cop::Sorbet::FalseSigil < ::RuboCop::Cop::Sorbet::HasSigil
  def minimum_strictness; end
end

class RuboCop::Cop::Sorbet::ForbidExtendTSigHelpersInShims < ::RuboCop::Cop::Cop
  include ::RuboCop::Cop::RangeHelp

  def autocorrect(node); end
  def extend_t_helpers?(param0 = T.unsafe(nil)); end
  def extend_t_sig?(param0 = T.unsafe(nil)); end
  def on_send(node); end
end

RuboCop::Cop::Sorbet::ForbidExtendTSigHelpersInShims::MSG = T.let(T.unsafe(nil), String)
RuboCop::Cop::Sorbet::ForbidExtendTSigHelpersInShims::RESTRICT_ON_SEND = T.let(T.unsafe(nil), Array)

class RuboCop::Cop::Sorbet::ForbidIncludeConstLiteral < ::RuboCop::Cop::Cop
  def initialize(*_arg0); end

  def autocorrect(node); end
  def not_lit_const_include?(param0 = T.unsafe(nil)); end
  def on_send(node); end
  def used_names; end
  def used_names=(_arg0); end
end

RuboCop::Cop::Sorbet::ForbidIncludeConstLiteral::MSG = T.let(T.unsafe(nil), String)

class RuboCop::Cop::Sorbet::ForbidRBIOutsideOfAllowedPaths < ::RuboCop::Cop::Cop
  include ::RuboCop::Cop::RangeHelp

  def investigate(processed_source); end

  private

  def allowed_paths; end
end

class RuboCop::Cop::Sorbet::ForbidSuperclassConstLiteral < ::RuboCop::Cop::Cop
  def not_lit_const_superclass?(param0 = T.unsafe(nil)); end
  def on_class(node); end
end

RuboCop::Cop::Sorbet::ForbidSuperclassConstLiteral::MSG = T.let(T.unsafe(nil), String)

class RuboCop::Cop::Sorbet::ForbidTUnsafe < ::RuboCop::Cop::Cop
  def on_send(node); end
  def t_unsafe?(param0 = T.unsafe(nil)); end
end

class RuboCop::Cop::Sorbet::ForbidTUntyped < ::RuboCop::Cop::Cop
  def on_send(node); end
  def t_untyped?(param0 = T.unsafe(nil)); end
end

class RuboCop::Cop::Sorbet::ForbidUntypedStructProps < ::RuboCop::Cop::Cop
  def on_class(node); end
  def subclass_of_t_struct?(param0 = T.unsafe(nil)); end
  def t_immutable_struct(param0 = T.unsafe(nil)); end
  def t_nilable_untyped(param0 = T.unsafe(nil)); end
  def t_struct(param0 = T.unsafe(nil)); end
  def t_untyped(param0 = T.unsafe(nil)); end
  def untyped_props(param0); end
end

RuboCop::Cop::Sorbet::ForbidUntypedStructProps::MSG = T.let(T.unsafe(nil), String)

class RuboCop::Cop::Sorbet::HasSigil < ::RuboCop::Cop::Sorbet::ValidSigil
  def require_sigil_on_all_files?; end
end

class RuboCop::Cop::Sorbet::IgnoreSigil < ::RuboCop::Cop::Sorbet::HasSigil
  def minimum_strictness; end
end

class RuboCop::Cop::Sorbet::KeywordArgumentOrdering < ::RuboCop::Cop::Sorbet::SignatureCop
  def on_signature(node); end

  private

  def check_order_for_kwoptargs(parameters); end
end

module RuboCop::Cop::Sorbet::MutableConstantSorbetAwareBehaviour
  def on_assignment(value); end

  class << self
    def prepended(base); end
  end
end

class RuboCop::Cop::Sorbet::OneAncestorPerLine < ::RuboCop::Cop::Cop
  def abstract?(param0); end
  def autocorrect(node); end
  def more_than_one_ancestor(param0 = T.unsafe(nil)); end
  def on_class(node); end
  def on_module(node); end
  def requires_ancestors(param0); end

  private

  def new_ra_line(indent_count); end
  def process_node(node); end
end

RuboCop::Cop::Sorbet::OneAncestorPerLine::MSG = T.let(T.unsafe(nil), String)

class RuboCop::Cop::Sorbet::RedundantExtendTSig < ::RuboCop::Cop::Cop
  def autocorrect(node); end
  def extend_t_sig?(param0 = T.unsafe(nil)); end
  def on_send(node); end
end

RuboCop::Cop::Sorbet::RedundantExtendTSig::MSG = T.let(T.unsafe(nil), String)
RuboCop::Cop::Sorbet::RedundantExtendTSig::RESTRICT_ON_SEND = T.let(T.unsafe(nil), Array)

class RuboCop::Cop::Sorbet::SignatureBuildOrder < ::RuboCop::Cop::Sorbet::SignatureCop
  def autocorrect(node); end
  def on_signature(node); end
  def root_call(param0); end

  private

  def call_chain(sig_child_node); end
  def can_autocorrect?; end
  def node_reparsed_with_modern_features(node); end
end

class RuboCop::Cop::Sorbet::SignatureBuildOrder::ModernBuilder < ::RuboCop::AST::Builder; end
RuboCop::Cop::Sorbet::SignatureBuildOrder::ORDER = T.let(T.unsafe(nil), Hash)

class RuboCop::Cop::Sorbet::SignatureCop < ::RuboCop::Cop::Cop
  def on_block(node); end
  def on_signature(_); end
  def signature?(param0 = T.unsafe(nil)); end
  def with_runtime?(param0 = T.unsafe(nil)); end
  def without_runtime?(param0 = T.unsafe(nil)); end
end

class RuboCop::Cop::Sorbet::SingleLineRbiClassModuleDefinitions < ::RuboCop::Cop::Cop
  def autocorrect(node); end
  def on_class(node); end
  def on_module(node); end

  protected

  def convert_newlines(source); end
  def process_node(node); end
end

RuboCop::Cop::Sorbet::SingleLineRbiClassModuleDefinitions::MSG = T.let(T.unsafe(nil), String)

class RuboCop::Cop::Sorbet::StrictSigil < ::RuboCop::Cop::Sorbet::HasSigil
  def minimum_strictness; end
end

class RuboCop::Cop::Sorbet::StrongSigil < ::RuboCop::Cop::Sorbet::HasSigil
  def minimum_strictness; end
end

class RuboCop::Cop::Sorbet::TrueSigil < ::RuboCop::Cop::Sorbet::HasSigil
  def minimum_strictness; end
end

class RuboCop::Cop::Sorbet::TypeAliasName < ::RuboCop::Cop::Cop
  def casgn_type_alias?(param0 = T.unsafe(nil)); end
  def on_casgn(node); end
end

RuboCop::Cop::Sorbet::TypeAliasName::MSG = T.let(T.unsafe(nil), String)

class RuboCop::Cop::Sorbet::ValidSigil < ::RuboCop::Cop::Cop
  def autocorrect(_node); end
  def investigate(processed_source); end

  protected

  def check_sigil_present(sigil); end
  def check_strictness_level(sigil, strictness); end
  def check_strictness_not_empty(sigil, strictness); end
  def check_strictness_valid(sigil, strictness); end
  def extract_sigil(processed_source); end
  def extract_strictness(sigil); end
  def minimum_strictness; end
  def require_sigil_on_all_files?; end
  def suggested_strictness; end
  def suggested_strictness_level(minimum_strictness, suggested_strictness); end
end

RuboCop::Cop::Sorbet::ValidSigil::SIGIL_REGEX = T.let(T.unsafe(nil), Regexp)
RuboCop::Cop::Sorbet::ValidSigil::STRICTNESS_LEVELS = T.let(T.unsafe(nil), Array)
RuboCop::NodePattern = RuboCop::AST::NodePattern
RuboCop::ProcessedSource = RuboCop::AST::ProcessedSource
module RuboCop::Sorbet; end
RuboCop::Sorbet::CONFIG = T.let(T.unsafe(nil), Hash)
RuboCop::Sorbet::CONFIG_DEFAULT = T.let(T.unsafe(nil), Pathname)
class RuboCop::Sorbet::Error < ::StandardError; end

module RuboCop::Sorbet::Inject
  class << self
    def defaults!; end
  end
end

RuboCop::Sorbet::PROJECT_ROOT = T.let(T.unsafe(nil), Pathname)
RuboCop::Sorbet::VERSION = T.let(T.unsafe(nil), String)
RuboCop::Token = RuboCop::AST::Token
