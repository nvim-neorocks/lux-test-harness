local git_ref = '9653f291ab2179185dc3703672d9fbbd29e80cfb'
local modrev = '0.0.1'
local specrev = '1'

local repo_url = 'https://github.com/alex-pinkus/tree-sitter-swift'

rockspec_format = '3.0'
package = 'tree-sitter-swift'
version = modrev ..'-'.. specrev

description = {
  summary = 'tree-sitter parser for swift',
  labels = { 'neovim', 'tree-sitter' } ,
  homepage = 'https://github.com/alex-pinkus/tree-sitter-swift',
  license = 'UNKNOWN'
}

build_dependencies = {
  'luarocks-build-treesitter-parser >= 4.0.0',
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tree-sitter-swift-' .. '9653f291ab2179185dc3703672d9fbbd29e80cfb',
}

build = {
  type = "treesitter-parser",
  lang = "swift",
  parser = true,
  generate = true,
  generate_from_json = false,
  location = nil,
  copy_directories = { "queries" },
  queries = {
    ["highlights.scm"] = [==[
[
  "."
  ";"
  ":"
  ","
] @punctuation.delimiter

; TODO: "\\(" ")" in interpolations should be @punctuation.special
[
  "\\("
  "("
  ")"
  "["
  "]"
  "{"
  "}"
] @punctuation.bracket

; Identifiers
(attribute) @variable

(type_identifier) @type

(self_expression) @variable.builtin

; Declarations
"func" @keyword.function

[
  (visibility_modifier)
  (member_modifier)
  (function_modifier)
  (property_modifier)
  (parameter_modifier)
  (inheritance_modifier)
  (mutation_modifier)
] @keyword.modifier

(function_declaration
  (simple_identifier) @function.method)

(init_declaration
  "init" @constructor)

(throws) @keyword

(where_keyword) @keyword

(parameter
  external_name: (simple_identifier) @variable.parameter)

(parameter
  name: (simple_identifier) @variable.parameter)

(type_parameter
  (type_identifier) @variable.parameter)

(inheritance_constraint
  (identifier
    (simple_identifier) @variable.parameter))

(equality_constraint
  (identifier
    (simple_identifier) @variable.parameter))

(pattern
  bound_identifier: (simple_identifier)) @variable

[
  "protocol"
  "extension"
  "indirect"
  "nonisolated"
  "override"
  "convenience"
  "required"
  "some"
  "any"
  "weak"
  "unowned"
  "didSet"
  "willSet"
] @keyword

[
  "enum"
  "struct"
  "class"
  "typealias"
] @keyword.type

[
  "async"
  "await"
] @keyword.coroutine

[
  (getter_specifier)
  (setter_specifier)
  (modify_specifier)
] @keyword

(shebang_line) @keyword.directive

(class_body
  (property_declaration
    (pattern
      (simple_identifier) @variable.member)))

(protocol_property_declaration
  (pattern
    (simple_identifier) @variable.member))

(navigation_expression
  (navigation_suffix
    (simple_identifier) @variable.member))

(value_argument
  name: (value_argument_label) @variable.member)

(import_declaration
  "import" @keyword.import)

(enum_entry
  "case" @keyword)

; Attributes
(modifiers
  (attribute) @attribute.builtin)

(modifiers
  (attribute
    (user_type
      (type_identifier) @attribute.builtin)))

; Function calls
(call_expression
  (simple_identifier) @function.call) ; foo()

(call_expression
  ; foo.bar.baz(): highlight the baz()
  (navigation_expression
    (navigation_suffix
      (simple_identifier) @function.call)))

(call_expression
  (prefix_expression
    (simple_identifier) @function.call)) ; .foo()

((navigation_expression
  (simple_identifier) @type) ; SomeType.method(): highlight SomeType as a type
  (#lua-match? @type "^[A-Z]"))

(directive) @function.macro

(diagnostic) @function.macro

; Statements
(for_statement
  "for" @keyword.repeat)

(for_statement
  "in" @keyword.repeat)

(for_statement
  (pattern) @variable)

(else) @keyword

(as_operator) @keyword

[
  "while"
  "repeat"
  "continue"
  "break"
] @keyword.repeat

[
  "let"
  "var"
] @keyword

(guard_statement
  "guard" @keyword.conditional)

(if_statement
  "if" @keyword.conditional)

(switch_statement
  "switch" @keyword.conditional)

(switch_entry
  "case" @keyword)

(switch_entry
  "fallthrough" @keyword)

(switch_entry
  (default_keyword) @keyword)

"return" @keyword.return

(ternary_expression
  [
    "?"
    ":"
  ] @keyword.conditional)

[
  "do"
  (throw_keyword)
  (catch_keyword)
] @keyword

(statement_label) @label

; Comments
[
  (comment)
  (multiline_comment)
] @comment @spell

((comment) @comment.documentation
  (#lua-match? @comment.documentation "^///[^/]"))

((comment) @comment.documentation
  (#lua-match? @comment.documentation "^///$"))

((multiline_comment) @comment.documentation
  (#lua-match? @comment.documentation "^/[*][*][^*].*[*]/$"))

; String literals
(line_str_text) @string

(str_escaped_char) @string

(multi_line_str_text) @string

(raw_str_part) @string

(raw_str_end_part) @string

(raw_str_interpolation_start) @punctuation.special

[
  "\""
  "\"\"\""
] @string

; Lambda literals
(lambda_literal
  "in" @keyword.operator)

; Basic literals
[
  (integer_literal)
  (hex_literal)
  (oct_literal)
  (bin_literal)
] @number

(real_literal) @number.float

(boolean_literal) @boolean

"nil" @constant.builtin

; Regex literals
(regex_literal) @string.regexp

; Operators
(custom_operator) @operator

[
  "try"
  "try?"
  "try!"
  "+"
  "-"
  "*"
  "/"
  "%"
  "="
  "+="
  "-="
  "*="
  "/="
  "<"
  ">"
  "<="
  ">="
  "++"
  "--"
  "&"
  "&&"
  "|"
  "||"
  "~"
  "%="
  "!="
  "!=="
  "=="
  "==="
  "??"
  "->"
  "..<"
  "..."
  (bang)
] @operator
]==],
    ["indents.scm"] = [==[
; format-ignore
[
  ; ... refers to the section that will get affected by this indent.begin capture
  (protocol_body)               ; protocol Foo { ... }
  (class_body)                  ; class Foo { ... }
  (enum_class_body)             ; enum Foo { ... }
  (function_declaration)        ; func Foo (...) {...}
  (init_declaration)            ; init(...) {...}
  (deinit_declaration)          ; deinit {...}
  (computed_property)           ; { ... }
  (subscript_declaration)       ; subscript Foo(...) { ... }

  (computed_getter)             ; get { ... }
  (computed_setter)             ; set { ... }

  (assignment)                  ; a = b

  (control_transfer_statement)  ; return ...
  (for_statement)
  (while_statement)
  (repeat_while_statement)
  (do_statement)
  (if_statement)
  (switch_statement)
  (guard_statement)

  (type_parameters)             ; x<Foo>
  (tuple_type)                  ; (...)
  (array_type)                  ; [String]
  (dictionary_type)             ; [Foo: Bar]

  (call_expression)             ; callFunc(...)
  (tuple_expression)            ; ( foo + bar )
  (array_literal)               ; [ foo, bar ]
  (dictionary_literal)          ; [ foo: bar, x: y ]
  (lambda_literal) 
  (willset_didset_block)
  (willset_clause)
  (didset_clause)
] @indent.begin

(init_declaration) @indent.begin

(init_declaration
  [
    "init"
    "("
  ] @indent.branch)

; indentation for init parameters
(init_declaration
  ")" @indent.branch @indent.end)

(init_declaration
  (parameter) @indent.begin
  (#set! indent.immediate))

; @something(...)
(modifiers
  (attribute) @indent.begin)

(function_declaration
  (modifiers
    .
    (attribute)
    (_)* @indent.branch)
  .
  _ @indent.branch
  (#not-kind-eq? @indent.branch "type_parameters" "parameter"))

(ERROR
  [
    "<"
    "{"
    "("
    "["
  ]) @indent.begin

; if-elseif
(if_statement
  (if_statement) @indent.dedent)

; case Foo:
; default Foo:
; @attribute default Foo:
(switch_entry
  .
  _ @indent.branch)

(function_declaration
  ")" @indent.branch)

(type_parameters
  ">" @indent.branch @indent.end .)

(tuple_expression
  ")" @indent.branch @indent.end)

(value_arguments
  ")" @indent.branch @indent.end)

(tuple_type
  ")" @indent.branch @indent.end)

(modifiers
  (attribute
    ")" @indent.branch @indent.end))

[
  "}"
  "]"
] @indent.branch @indent.end

[
  ; (ERROR)
  (comment)
  (multiline_comment)
  (raw_str_part)
  (multi_line_string_literal)
] @indent.auto

(directive) @indent.ignore
]==],
    ["injections.scm"] = [==[
([
  (comment)
  (multiline_comment)
] @injection.content
  (#set! injection.language "comment"))
]==],
    ["locals.scm"] = [==[
(import_declaration
  (identifier) @local.definition.import)

(function_declaration
  name: (simple_identifier) @local.definition.function)

; Scopes
[
  (statements)
  (for_statement)
  (while_statement)
  (repeat_while_statement)
  (do_statement)
  (if_statement)
  (guard_statement)
  (switch_statement)
  (property_declaration)
  (function_declaration)
  (class_declaration)
  (protocol_declaration)
] @local.scope
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
