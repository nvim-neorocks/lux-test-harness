local git_ref = '32d3e3daa745bf9f1665676f323be968444619e1'
local modrev = '0.0.41'
local specrev = '1'

local repo_url = 'https://github.com/jpt13653903/tree-sitter-vhdl'

rockspec_format = '3.0'
package = 'tree-sitter-vhdl'
version = modrev ..'-'.. specrev

description = {
  summary = 'tree-sitter parser for vhdl',
  labels = { 'neovim', 'tree-sitter' } ,
  homepage = 'https://github.com/jpt13653903/tree-sitter-vhdl',
  license = 'UNKNOWN'
}

dependencies = { 'lua >= 5.1' } 

build_dependencies = {
  'luarocks-build-treesitter-parser >= 5.0.0',
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tree-sitter-vhdl-' .. '32d3e3daa745bf9f1665676f323be968444619e1',
}

build = {
  type = "treesitter-parser",
  lang = "vhdl",
  parser = true,
  generate = false,
  generate_from_json = false,
  location = nil,
  copy_directories = { "queries" },
  queries = {
    ["folds.scm"] = [==[
[
  (block_comment)
  (architecture_definition)
  (architecture_head)
  (concurrent_block)
  (configuration_declaration)
  (component_instantiation_statement)
  (generic_map_aspect)
  (port_map_aspect)
  (process_statement)
  (process_head)
  (sequential_block)
  (block_configuration)
  (block_statement)
  (block_head)
  (component_declaration)
  (component_configuration)
  (generic_clause)
  (port_clause)
  (entity_declaration)
  (entity_head)
  (entity_body)
  (package_declaration)
  (package_definition)
  (function_specification)
  (subprogram_declaration)
  (subprogram_definition)
  (subprogram_head)
  (procedure_specification)
  (sequential_block)
  (loop_statement)
  (if_statement_block)
  (if_statement)
  (elsif_statement)
  (else_statement)
  (case_statement)
  (case_statement_alternative)
  (for_generate_statement)
  (if_generate_statement)
  (if_generate)
  (elsif_generate)
  (else_generate)
  (case_generate_statement)
  (case_generate_alternative)
  (type_declaration)
] @fold
]==],
    ["highlights.scm"] = [==[
(line_comment
  (comment_content) @spell) @comment

(block_comment
  (comment_content) @spell) @comment.documentation

(identifier) @variable

[
  "access"
  "after"
  "alias"
  "architecture"
  "array"
  ; "assume"
  "attribute"
  "block"
  "body"
  "component"
  "configuration"
  "context"
  ; "cover"
  "disconnect"
  "entity"
  ; "fairness"
  "file"
  "force"
  "generate"
  "generic"
  "group"
  "label"
  "literal"
  "map"
  "new"
  "package"
  "parameter"
  "port"
  "property"
  "range"
  "reject"
  "release"
  ; "restrict"
  "sequence"
  "transport"
  "unaffected"
  "view"
  ; "vmode"
  ; "vpkg"
  ; "vprop"
  "vunit"
] @keyword

[
  (ALL)
  (OTHERS)
  "<>"
  (DEFAULT)
  (OPEN)
] @constant.builtin

[
  "is"
  "begin"
  "end"
] @keyword

(parameter_specification
  "in" @keyword)

[
  "process"
  "wait"
  "on"
  "until"
] @keyword.coroutine

(end_process
  "end" @keyword.coroutine)

(timeout_clause
  "for" @keyword.coroutine)

[
  "function"
  "procedure"
] @keyword.function

(subprogram_end
  "end" @keyword.function)

[
  "to"
  "downto"
  "of"
] @keyword.operator

[
  "library"
  "use"
] @keyword.import

[
  "subtype"
  "type"
  "record"
  "units"
  "constant"
  "signal"
  "variable"
] @keyword.type

[
  "protected"
  "private"
  "pure"
  "impure"
  "inertial"
  "postponed"
  ; "strong"
  "guarded"
  "out"
  "inout"
  "linkage"
  "buffer"
  "register"
  "bus"
  "shared"
] @keyword.modifier

(mode
  "in" @keyword.modifier)

(force_mode
  "in" @keyword.modifier)

[
  "while"
  "loop"
  "next"
  "exit"
] @keyword.repeat

(end_loop
  "end" @keyword.repeat)

(for_loop
  "for" @keyword.repeat)

(block_configuration
  "for" @keyword)

(configuration_specification
  "for" @keyword)

(component_configuration
  "for" @keyword)

(end_for
  "for" @keyword)

"return" @keyword.return

[
  "assert"
  "report"
  "severity"
] @keyword.debug

[
  "if"
  "then"
  "elsif"
  "case"
] @keyword.conditional

(end_if
  "end" @keyword.conditional)

(end_case
  "end" @keyword.conditional)

(when_element
  "when" @keyword.conditional)

(case_generate_alternative
  "when" @keyword.conditional)

(else_statement
  "else" @keyword.conditional)

(else_generate
  "else" @keyword.conditional)

[
  "with"
  "select"
] @keyword.conditional.ternary

(when_expression
  "when" @keyword.conditional.ternary)

(else_expression
  "else" @keyword.conditional.ternary)

(else_waveform
  "else" @keyword.conditional.ternary)

(else_expression_or_unaffected
  "else" @keyword.conditional.ternary)

"null" @constant.builtin

(user_directive) @keyword.directive

(protect_directive) @keyword.directive

(warning_directive) @keyword.directive

(error_directive) @keyword.directive

(if_conditional_analysis
  "if" @keyword.directive)

(if_conditional_analysis
  "then" @keyword.directive)

(elsif_conditional_analysis
  "elsif" @keyword.directive)

(else_conditional_analysis
  "else" @keyword.directive)

(end_conditional_analysis
  "end" @keyword.directive)

(end_conditional_analysis
  "if" @keyword.directive)

(directive_body) @keyword.directive

(directive_constant_builtin) @constant.macro

(directive_error) @comment.error

(directive_protect) @keyword.directive

(directive_warning) @comment.warning

[
  (condition_conversion)
  (relational_operator)
  (sign)
  (adding_operator)
  (exponentiate)
  (variable_assignment)
  (signal_assignment)
  "*"
  "/"
  ":"
  "=>"
] @operator

[
  (unary_operator)
  (logical_operator)
  (shift_operator)
  "mod"
  "not"
  "rem"
] @keyword.operator

[
  "'"
  ","
  "."
  ";"
] @punctuation.delimiter

[
  "("
  ")"
  "["
  "]"
  "<<"
  ">>"
] @punctuation.bracket

"@" @punctuation.special

[
  (decimal_integer)
  (string_literal_std_logic)
] @number

(decimal_float) @number.float

(bit_string_length) @property

(bit_string_base) @type.builtin

(bit_string_value) @number

(based_literal
  (based_base) @type.builtin
  (based_integer) @number)

(based_literal
  (based_base) @type.builtin
  (based_float) @number.float)

(string_literal) @string @spell

(character_literal) @character

(library_constant_std_logic) @constant.builtin

(library_constant) @constant.builtin

(library_function) @function.builtin

(library_constant_boolean) @boolean

(library_constant_character) @character

(library_constant_debug) @keyword.debug

(unit) @keyword.modifier

(library_constant_unit) @keyword.modifier

(label) @label

(generic_map_aspect
  "generic" @constructor
  "map" @constructor)

(port_map_aspect
  "port" @constructor
  "map" @constructor)

(selection
  (identifier) @variable.member)

(_
  view: (_) @type)

(_
  type: (_) @type)

(_
  library: (_) @module)

(_
  package: (_) @module)

(_
  entity: (_) @module)

(_
  component: (_) @module)

(_
  configuration: (_) @property)

(_
  architecture: (_) @property)

(_
  function: (_) @function)

(_
  procedure: (_) @function.method)

(_
  attribute: (_) @attribute)

(_
  constant: (_) @constant)

(_
  generic: (_) @variable.parameter)

(_
  view: (name
    (_)) @type)

(_
  type: (name
    (_)) @type)

(_
  entity: (name
    (_)) @module)

(_
  component: (name
    (_)) @module)

(_
  configuration: (name
    (_)) @module)

(library_type) @type.builtin

[
  (attribute_function)
  (attribute_impure_function)
  (attribute_mode_view)
  (attribute_pure_function)
  (attribute_range)
  (attribute_signal)
  (attribute_subtype)
  (attribute_type)
  (attribute_value)
  (library_attribute)
] @attribute.builtin

(library_namespace) @module.builtin

(subtype_declaration
  (identifier) @type.definition)

(type_declaration
  (identifier) @type.definition)

(mode_view_declaration
  (identifier) @type.definition)
]==],
    ["injections.scm"] = [==[
(line_comment
  (comment_content) @injection.content
  (#set! injection.language "comment"))

(block_comment
  (comment_content) @injection.content
  (#set! injection.language "comment"))
]==],
  },
  extra_files = {
    ["nvim-treesitter-LICENSE"] = [[
The tree-sitter queries that are bundled with this package
have been borrowed from nvim-treesitter.
See the following license:

                                 Apache License
                           Version 2.0, January 2004
                        http://www.apache.org/licenses/

   TERMS AND CONDITIONS FOR USE, REPRODUCTION, AND DISTRIBUTION

   1. Definitions.

      "License" shall mean the terms and conditions for use, reproduction,
      and distribution as defined by Sections 1 through 9 of this document.

      "Licensor" shall mean the copyright owner or entity authorized by
      the copyright owner that is granting the License.

      "Legal Entity" shall mean the union of the acting entity and all
      other entities that control, are controlled by, or are under common
      control with that entity. For the purposes of this definition,
      "control" means (i) the power, direct or indirect, to cause the
      direction or management of such entity, whether by contract or
      otherwise, or (ii) ownership of fifty percent (50%) or more of the
      outstanding shares, or (iii) beneficial ownership of such entity.

      "You" (or "Your") shall mean an individual or Legal Entity
      exercising permissions granted by this License.

      "Source" form shall mean the preferred form for making modifications,
      including but not limited to software source code, documentation
      source, and configuration files.

      "Object" form shall mean any form resulting from mechanical
      transformation or translation of a Source form, including but
      not limited to compiled object code, generated documentation,
      and conversions to other media types.

      "Work" shall mean the work of authorship, whether in Source or
      Object form, made available under the License, as indicated by a
      copyright notice that is included in or attached to the work
      (an example is provided in the Appendix below).

      "Derivative Works" shall mean any work, whether in Source or Object
      form, that is based on (or derived from) the Work and for which the
      editorial revisions, annotations, elaborations, or other modifications
      represent, as a whole, an original work of authorship. For the purposes
      of this License, Derivative Works shall not include works that remain
      separable from, or merely link (or bind by name) to the interfaces of,
      the Work and Derivative Works thereof.

      "Contribution" shall mean any work of authorship, including
      the original version of the Work and any modifications or additions
      to that Work or Derivative Works thereof, that is intentionally
      submitted to Licensor for inclusion in the Work by the copyright owner
      or by an individual or Legal Entity authorized to submit on behalf of
      the copyright owner. For the purposes of this definition, "submitted"
      means any form of electronic, verbal, or written communication sent
      to the Licensor or its representatives, including but not limited to
      communication on electronic mailing lists, source code control systems,
      and issue tracking systems that are managed by, or on behalf of, the
      Licensor for the purpose of discussing and improving the Work, but
      excluding communication that is conspicuously marked or otherwise
      designated in writing by the copyright owner as "Not a Contribution."

      "Contributor" shall mean Licensor and any individual or Legal Entity
      on behalf of whom a Contribution has been received by Licensor and
      subsequently incorporated within the Work.

   2. Grant of Copyright License. Subject to the terms and conditions of
      this License, each Contributor hereby grants to You a perpetual,
      worldwide, non-exclusive, no-charge, royalty-free, irrevocable
      copyright license to reproduce, prepare Derivative Works of,
      publicly display, publicly perform, sublicense, and distribute the
      Work and such Derivative Works in Source or Object form.

   3. Grant of Patent License. Subject to the terms and conditions of
      this License, each Contributor hereby grants to You a perpetual,
      worldwide, non-exclusive, no-charge, royalty-free, irrevocable
      (except as stated in this section) patent license to make, have made,
      use, offer to sell, sell, import, and otherwise transfer the Work,
      where such license applies only to those patent claims licensable
      by such Contributor that are necessarily infringed by their
      Contribution(s) alone or by combination of their Contribution(s)
      with the Work to which such Contribution(s) was submitted. If You
      institute patent litigation against any entity (including a
      cross-claim or counterclaim in a lawsuit) alleging that the Work
      or a Contribution incorporated within the Work constitutes direct
      or contributory patent infringement, then any patent licenses
      granted to You under this License for that Work shall terminate
      as of the date such litigation is filed.

   4. Redistribution. You may reproduce and distribute copies of the
      Work or Derivative Works thereof in any medium, with or without
      modifications, and in Source or Object form, provided that You
      meet the following conditions:

      (a) You must give any other recipients of the Work or
          Derivative Works a copy of this License; and

      (b) You must cause any modified files to carry prominent notices
          stating that You changed the files; and

      (c) You must retain, in the Source form of any Derivative Works
          that You distribute, all copyright, patent, trademark, and
          attribution notices from the Source form of the Work,
          excluding those notices that do not pertain to any part of
          the Derivative Works; and

      (d) If the Work includes a "NOTICE" text file as part of its
          distribution, then any Derivative Works that You distribute must
          include a readable copy of the attribution notices contained
          within such NOTICE file, excluding those notices that do not
          pertain to any part of the Derivative Works, in at least one
          of the following places: within a NOTICE text file distributed
          as part of the Derivative Works; within the Source form or
          documentation, if provided along with the Derivative Works; or,
          within a display generated by the Derivative Works, if and
          wherever such third-party notices normally appear. The contents
          of the NOTICE file are for informational purposes only and
          do not modify the License. You may add Your own attribution
          notices within Derivative Works that You distribute, alongside
          or as an addendum to the NOTICE text from the Work, provided
          that such additional attribution notices cannot be construed
          as modifying the License.

      You may add Your own copyright statement to Your modifications and
      may provide additional or different license terms and conditions
      for use, reproduction, or distribution of Your modifications, or
      for any such Derivative Works as a whole, provided Your use,
      reproduction, and distribution of the Work otherwise complies with
      the conditions stated in this License.

   5. Submission of Contributions. Unless You explicitly state otherwise,
      any Contribution intentionally submitted for inclusion in the Work
      by You to the Licensor shall be under the terms and conditions of
      this License, without any additional terms or conditions.
      Notwithstanding the above, nothing herein shall supersede or modify
      the terms of any separate license agreement you may have executed
      with Licensor regarding such Contributions.

   6. Trademarks. This License does not grant permission to use the trade
      names, trademarks, service marks, or product names of the Licensor,
      except as required for reasonable and customary use in describing the
      origin of the Work and reproducing the content of the NOTICE file.

   7. Disclaimer of Warranty. Unless required by applicable law or
      agreed to in writing, Licensor provides the Work (and each
      Contributor provides its Contributions) on an "AS IS" BASIS,
      WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or
      implied, including, without limitation, any warranties or conditions
      of TITLE, NON-INFRINGEMENT, MERCHANTABILITY, or FITNESS FOR A
      PARTICULAR PURPOSE. You are solely responsible for determining the
      appropriateness of using or redistributing the Work and assume any
      risks associated with Your exercise of permissions under this License.

   8. Limitation of Liability. In no event and under no legal theory,
      whether in tort (including negligence), contract, or otherwise,
      unless required by applicable law (such as deliberate and grossly
      negligent acts) or agreed to in writing, shall any Contributor be
      liable to You for damages, including any direct, indirect, special,
      incidental, or consequential damages of any character arising as a
      result of this License or out of the use or inability to use the
      Work (including but not limited to damages for loss of goodwill,
      work stoppage, computer failure or malfunction, or any and all
      other commercial damages or losses), even if such Contributor
      has been advised of the possibility of such damages.

   9. Accepting Warranty or Additional Liability. While redistributing
      the Work or Derivative Works thereof, You may choose to offer,
      and charge a fee for, acceptance of support, warranty, indemnity,
      or other liability obligations and/or rights consistent with this
      License. However, in accepting such obligations, You may act only
      on Your own behalf and on Your sole responsibility, not on behalf
      of any other Contributor, and only if You agree to indemnify,
      defend, and hold each Contributor harmless for any liability
      incurred by, or claims asserted against, such Contributor by reason
      of your accepting any such warranty or additional liability.

   END OF TERMS AND CONDITIONS

   APPENDIX: How to apply the Apache License to your work.

      To apply the Apache License to your work, attach the following
      boilerplate notice, with the fields enclosed by brackets "[]"
      replaced with your own identifying information. (Don't include
      the brackets!)  The text should be enclosed in the appropriate
      comment syntax for the file format. We also recommend that a
      file or class name and description of purpose be included on the
      same "printed page" as the copyright notice for easier
      identification within third-party archives.

   Copyright [yyyy] [name of copyright owner]

   Licensed under the Apache License, Version 2.0 (the "License");
   you may not use this file except in compliance with the License.
   You may obtain a copy of the License at

       http://www.apache.org/licenses/LICENSE-2.0

   Unless required by applicable law or agreed to in writing, software
   distributed under the License is distributed on an "AS IS" BASIS,
   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
   See the License for the specific language governing permissions and
   limitations under the License.
]],
  },
}
