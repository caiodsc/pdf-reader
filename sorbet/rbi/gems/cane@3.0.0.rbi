# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `cane` gem.
# Please instead update this file by running `bin/tapioca gem cane`.

# Provides a SimpleTaskRunner or Parallel task runner based on configuration
#
# source://cane//lib/cane/violation_formatter.rb#4
module Cane
  private

  # source://cane//lib/cane/default_checks.rb#8
  def default_checks; end

  # source://cane//lib/cane/runner.rb#8
  def run(*args); end

  # source://cane//lib/cane/task_runner.rb#3
  def task_runner(opts); end

  class << self
    # source://cane//lib/cane/default_checks.rb#8
    def default_checks; end

    # source://cane//lib/cane/runner.rb#8
    def run(*args); end

    # source://cane//lib/cane/task_runner.rb#3
    def task_runner(opts); end
  end
end

# Creates violations for methods that are too complicated using a simple
# algorithm run against the parse tree of a file to count assignments,
# branches, and conditionals. Borrows heavily from metric_abc.
#
# source://cane//lib/cane/abc_check.rb#12
class Cane::AbcCheck < ::Struct
  # source://cane//lib/cane/abc_check.rb#36
  def violations; end

  protected

  # source://cane//lib/cane/abc_check.rb#193
  def exclusions; end

  # source://cane//lib/cane/abc_check.rb#181
  def file_names; end

  # source://cane//lib/cane/abc_check.rb#46
  def find_violations(file_name); end

  # source://cane//lib/cane/abc_check.rb#189
  def max_allowed_complexity; end

  # source://cane//lib/cane/abc_check.rb#185
  def order(result); end

  # source://cane//lib/cane/abc_check.rb#197
  def worker; end

  class << self
    # source://cane//lib/cane/abc_check.rb#14
    def key; end

    # source://cane//lib/cane/abc_check.rb#15
    def name; end

    # source://cane//lib/cane/abc_check.rb#16
    def options; end
  end
end

# Null object for when the file cannot be parsed.
#
# source://cane//lib/cane/abc_check.rb#57
class Cane::AbcCheck::InvalidAst < ::Struct
  # source://cane//lib/cane/abc_check.rb#58
  def violations; end
end

# Wrapper object around sexps returned from ripper.
#
# source://cane//lib/cane/abc_check.rb#65
class Cane::AbcCheck::RubyAst < ::Struct
  # @return [RubyAst] a new instance of RubyAst
  #
  # source://cane//lib/cane/abc_check.rb#67
  def initialize(*args); end

  # source://cane//lib/cane/abc_check.rb#72
  def violations; end

  protected

  # Stateful flag used to determine whether we are currently parsing an
  # anonymous class. See #container_label.
  #
  # source://cane//lib/cane/abc_check.rb#87
  def anon_method_add; end

  # Stateful flag used to determine whether we are currently parsing an
  # anonymous class. See #container_label.
  #
  # source://cane//lib/cane/abc_check.rb#87
  def anon_method_add=(_arg0); end

  # source://cane//lib/cane/abc_check.rb#149
  def assignment_nodes; end

  # source://cane//lib/cane/abc_check.rb#161
  def branch_nodes; end

  # source://cane//lib/cane/abc_check.rb#108
  def calculate_abc(method_node); end

  # source://cane//lib/cane/abc_check.rb#165
  def condition_nodes; end

  # source://cane//lib/cane/abc_check.rb#116
  def container_label(node); end

  # source://cane//lib/cane/abc_check.rb#157
  def container_nodes; end

  # source://cane//lib/cane/abc_check.rb#145
  def count_nodes(node, types); end

  # @return [Boolean]
  #
  # source://cane//lib/cane/abc_check.rb#171
  def excluded?(method_description); end

  # source://cane//lib/cane/abc_check.rb#137
  def label_for(node); end

  # source://cane//lib/cane/abc_check.rb#175
  def method_description(node, *modules, meth_name); end

  # source://cane//lib/cane/abc_check.rb#153
  def method_nodes; end

  # Recursive function to process an AST. The `complexity` variable mutates,
  # which is a bit confusing. `nesting` does not.
  #
  # source://cane//lib/cane/abc_check.rb#91
  def process_ast(node, complexity = T.unsafe(nil), nesting = T.unsafe(nil)); end
end

# source://cane//lib/cane/abc_check.rb#169
Cane::AbcCheck::RubyAst::METH_CHARS = T.let(T.unsafe(nil), Hash)

# Command line interface. This passes off arguments to the parser and starts
# the Cane runner
#
# source://cane//lib/cane/cli/options.rb#5
module Cane::CLI
  private

  # source://cane//lib/cane/cli/options.rb#18
  def default_options; end

  # source://cane//lib/cane/cli/options.rb#6
  def defaults(check); end

  # source://cane//lib/cane/cli.rb#10
  def run(args); end

  class << self
    # source://cane//lib/cane/cli/options.rb#18
    def default_options; end

    # source://cane//lib/cane/cli/options.rb#6
    def defaults(check); end

    # source://cane//lib/cane/cli.rb#10
    def run(args); end
  end
end

# Provides a specification for the command line interface that drives
# documentation, parsing, and default values.
#
# source://cane//lib/cane/cli/parser.rb#12
class Cane::CLI::Parser
  # @return [Parser] a new instance of Parser
  #
  # source://cane//lib/cane/cli/parser.rb#22
  def initialize(stdout = T.unsafe(nil)); end

  # source://cane//lib/cane/cli/parser.rb#63
  def add_banner; end

  # source://cane//lib/cane/cli/parser.rb#110
  def add_cane_options; end

  # source://cane//lib/cane/cli/parser.rb#87
  def add_check_options(check); end

  # source://cane//lib/cane/cli/parser.rb#127
  def add_checks_shortcut; end

  # source://cane//lib/cane/cli/parser.rb#145
  def add_help; end

  # source://cane//lib/cane/cli/parser.rb#152
  def add_option(option, description, opts = T.unsafe(nil)); end

  # source://cane//lib/cane/cli/parser.rb#72
  def add_user_defined_checks; end

  # source://cane//lib/cane/cli/parser.rb#138
  def add_version; end

  # source://cane//lib/cane/cli/parser.rb#51
  def get_default_options; end

  # source://cane//lib/cane/cli/parser.rb#167
  def options; end

  # source://cane//lib/cane/cli/parser.rb#39
  def parse(args, ret = T.unsafe(nil)); end

  # source://cane//lib/cane/cli/parser.rb#173
  def parser; end

  # source://cane//lib/cane/cli/parser.rb#55
  def read_options_from_file(file); end

  # Returns the value of attribute stdout.
  #
  # source://cane//lib/cane/cli/parser.rb#177
  def stdout; end

  class << self
    # source://cane//lib/cane/cli/parser.rb#18
    def parse(*args); end
  end
end

# Exception to indicate that no further processing is required and the
# program can exit. This is used to handle --help and --version flags.
#
# source://cane//lib/cane/cli/parser.rb#16
class Cane::CLI::Parser::OptionsHandled < ::RuntimeError; end

# Creates violations for class definitions that do not have an explantory
# comment immediately preceding.
#
# source://cane//lib/cane/doc_check.rb#8
class Cane::DocCheck < ::Struct
  # source://cane//lib/cane/doc_check.rb#96
  def class_definition(number, line, last_line); end

  # @return [Boolean]
  #
  # source://cane//lib/cane/doc_check.rb#124
  def class_definition?(line); end

  # source://cane//lib/cane/doc_check.rb#73
  def class_definitions_in(file_name); end

  # @return [Boolean]
  #
  # source://cane//lib/cane/doc_check.rb#132
  def comment?(line); end

  # @return [Boolean]
  #
  # source://cane//lib/cane/doc_check.rb#146
  def excluded?(file); end

  # source://cane//lib/cane/doc_check.rb#140
  def exclusions; end

  # source://cane//lib/cane/doc_check.rb#136
  def extract_class_name(line); end

  # source://cane//lib/cane/doc_check.rb#116
  def file_names; end

  # source://cane//lib/cane/doc_check.rb#60
  def find_violations(file_name); end

  # @return [Boolean]
  #
  # source://cane//lib/cane/doc_check.rb#120
  def method_definition?(line); end

  # source://cane//lib/cane/doc_check.rb#105
  def missing_file_violations; end

  # @return [Boolean]
  #
  # source://cane//lib/cane/doc_check.rb#128
  def single_line_class_definition?(line); end

  # source://cane//lib/cane/doc_check.rb#52
  def violations; end

  # source://cane//lib/cane/doc_check.rb#150
  def worker; end

  class << self
    # source://cane//lib/cane/doc_check.rb#21
    def key; end

    # source://cane//lib/cane/doc_check.rb#22
    def name; end

    # source://cane//lib/cane/doc_check.rb#23
    def options; end
  end
end

# source://cane//lib/cane/doc_check.rb#44
Cane::DocCheck::CLASS_REGEX = T.let(T.unsafe(nil), Regexp)

# source://cane//lib/cane/doc_check.rb#13
class Cane::DocCheck::ClassDefinition < ::Struct
  # source://cane//lib/cane/doc_check.rb#15
  def label; end

  # source://cane//lib/cane/doc_check.rb#14
  def line; end

  # @return [Boolean]
  #
  # source://cane//lib/cane/doc_check.rb#16
  def missing_doc?; end

  # source://cane//lib/cane/doc_check.rb#18
  def requires_doc=(value); end

  # @return [Boolean]
  #
  # source://cane//lib/cane/doc_check.rb#17
  def requires_doc?; end

  # Returns the value of attribute values
  #
  # @return [Object] the current value of values
  def values; end

  # Sets the attribute values
  #
  # @param value [Object] the value to set the attribute values to.
  # @return [Object] the newly set value
  def values=(_); end

  class << self
    def [](*_arg0); end
    def inspect; end
    def keyword_init?; end
    def members; end
    def new(*_arg0); end
  end
end

# source://cane//lib/cane/doc_check.rb#10
Cane::DocCheck::DESCRIPTION = T.let(T.unsafe(nil), String)

# Stolen from ERB source, amended to be slightly stricter to work around
# some known false positives.
#
# source://cane//lib/cane/doc_check.rb#41
Cane::DocCheck::MAGIC_COMMENT_REGEX = T.let(T.unsafe(nil), Regexp)

# source://cane//lib/cane/doc_check.rb#50
Cane::DocCheck::METHOD_REGEX = T.let(T.unsafe(nil), Regexp)

# http://rubular.com/r/53BapkefdD
#
# source://cane//lib/cane/doc_check.rb#47
Cane::DocCheck::SINGLE_LINE_CLASS_REGEX = T.let(T.unsafe(nil), Regexp)

# Provides iteration over lines (from a file), correctly handling encoding.
#
# source://cane//lib/cane/encoding_aware_iterator.rb#4
class Cane::EncodingAwareIterator
  include ::Enumerable

  # @return [EncodingAwareIterator] a new instance of EncodingAwareIterator
  #
  # source://cane//lib/cane/encoding_aware_iterator.rb#7
  def initialize(lines); end

  # source://cane//lib/cane/encoding_aware_iterator.rb#11
  def each(&block); end

  protected

  # Returns the value of attribute lines.
  #
  # source://cane//lib/cane/encoding_aware_iterator.rb#27
  def lines; end
end

# An interface for interacting with files that ensures encoding is handled in
# a consistent manner.
#
# source://cane//lib/cane/file.rb#7
class Cane::File
  class << self
    # source://cane//lib/cane/file.rb#25
    def case_insensitive_glob(glob); end

    # source://cane//lib/cane/file.rb#13
    def contents(path); end

    # @return [Boolean]
    #
    # source://cane//lib/cane/file.rb#21
    def exists?(path); end

    # source://cane//lib/cane/file.rb#9
    def iterator(path); end

    # source://cane//lib/cane/file.rb#17
    def open(path); end
  end
end

# Computes a machine-readable JSON representation from an array of violations
# computed by the checks.
#
# source://cane//lib/cane/json_formatter.rb#7
class Cane::JsonFormatter
  # @return [JsonFormatter] a new instance of JsonFormatter
  #
  # source://cane//lib/cane/json_formatter.rb#8
  def initialize(violations, options = T.unsafe(nil)); end

  # source://cane//lib/cane/json_formatter.rb#12
  def to_s; end
end

# Orchestrates the running of checks per the provided configuration, and
# hands the result to a formatter for display. This is the core of the
# application, but for the actual entry point see `Cane::CLI`.
#
# source://cane//lib/cane/runner.rb#16
class Cane::Runner
  # @return [Runner] a new instance of Runner
  #
  # source://cane//lib/cane/runner.rb#17
  def initialize(spec); end

  # source://cane//lib/cane/runner.rb#22
  def run; end

  protected

  # Returns the value of attribute checks.
  #
  # source://cane//lib/cane/runner.rb#30
  def checks; end

  # source://cane//lib/cane/runner.rb#42
  def formatter; end

  # Returns the value of attribute opts.
  #
  # source://cane//lib/cane/runner.rb#30
  def opts; end

  # source://cane//lib/cane/runner.rb#38
  def outputter; end

  # source://cane//lib/cane/runner.rb#32
  def violations; end
end

# Mirrors the Parallel gem's interface but does not provide any parallelism.
# This is faster for smaller tasks since it doesn't incur any overhead for
# creating new processes and communicating between them.
#
# source://cane//lib/cane/task_runner.rb#15
class Cane::SimpleTaskRunner
  class << self
    # source://cane//lib/cane/task_runner.rb#16
    def map(enumerable, &block); end
  end
end

# Creates violations for files that do not meet style conventions. Only
# highly obvious, probable, and non-controversial checks are performed here.
# It is not the goal of the tool to provide an extensive style report, but
# only to prevent stupid mistakes.
#
# source://cane//lib/cane/style_check.rb#12
class Cane::StyleCheck < ::Struct
  # source://cane//lib/cane/style_check.rb#35
  def violations; end

  protected

  # @return [Boolean]
  #
  # source://cane//lib/cane/style_check.rb#80
  def excluded?(file); end

  # source://cane//lib/cane/style_check.rb#74
  def exclusions; end

  # source://cane//lib/cane/style_check.rb#62
  def file_list; end

  # source://cane//lib/cane/style_check.rb#70
  def map_lines(file_path, &block); end

  # source://cane//lib/cane/style_check.rb#66
  def measure; end

  # source://cane//lib/cane/style_check.rb#52
  def violations_for_line(line); end

  # source://cane//lib/cane/style_check.rb#84
  def worker; end

  class << self
    # source://cane//lib/cane/style_check.rb#14
    def key; end

    # source://cane//lib/cane/style_check.rb#15
    def name; end

    # source://cane//lib/cane/style_check.rb#16
    def options; end
  end
end

# Configurable check that allows the contents of a file to be compared against
# a given value.
#
# source://cane//lib/cane/threshold_check.rb#7
class Cane::ThresholdCheck < ::Struct
  # source://cane//lib/cane/threshold_check.rb#49
  def normalized_limit(limit); end

  # source://cane//lib/cane/threshold_check.rb#63
  def thresholds; end

  # source://cane//lib/cane/threshold_check.rb#55
  def value_from_file(file); end

  # source://cane//lib/cane/threshold_check.rb#26
  def violations; end

  class << self
    # source://cane//lib/cane/threshold_check.rb#16
    def key; end

    # source://cane//lib/cane/threshold_check.rb#17
    def options; end
  end
end

# source://cane//lib/cane/threshold_check.rb#8
Cane::ThresholdCheck::THRESHOLDS = T.let(T.unsafe(nil), Hash)

# Null object for all cases when the value to be compared against cannot be
# read.
#
# source://cane//lib/cane/threshold_check.rb#73
class Cane::ThresholdCheck::UnavailableValue
  # source://cane//lib/cane/threshold_check.rb#74
  def >=(_); end

  # @return [Boolean]
  #
  # source://cane//lib/cane/threshold_check.rb#76
  def real?; end

  # source://cane//lib/cane/threshold_check.rb#75
  def to_s; end
end

# source://cane//lib/cane/version.rb#2
Cane::VERSION = T.let(T.unsafe(nil), String)

# Computes a string to be displayed as output from an array of violations
# computed by the checks.
#
# source://cane//lib/cane/violation_formatter.rb#8
class Cane::ViolationFormatter
  # @return [ViolationFormatter] a new instance of ViolationFormatter
  #
  # source://cane//lib/cane/violation_formatter.rb#11
  def initialize(violations, options = T.unsafe(nil)); end

  # Returns the value of attribute options.
  #
  # source://cane//lib/cane/violation_formatter.rb#9
  def options; end

  # source://cane//lib/cane/violation_formatter.rb#22
  def to_s; end

  # Returns the value of attribute violations.
  #
  # source://cane//lib/cane/violation_formatter.rb#9
  def violations; end

  protected

  # source://cane//lib/cane/violation_formatter.rb#65
  def colorize(string); end

  # source://cane//lib/cane/violation_formatter.rb#53
  def column_widths(violations, columns); end

  # source://cane//lib/cane/violation_formatter.rb#39
  def format_group_header(description, violations); end

  # source://cane//lib/cane/violation_formatter.rb#59
  def format_violation(v, column_widths); end

  # source://cane//lib/cane/violation_formatter.rb#43
  def format_violations(violations); end

  # source://cane//lib/cane/violation_formatter.rb#71
  def totals; end
end