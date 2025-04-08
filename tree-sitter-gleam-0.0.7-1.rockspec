local git_ref = '9586f38658da115c90e2d01099c83479eb0eea99'
local modrev = '0.0.7'
local specrev = '1'

local repo_url = 'https://github.com/gleam-lang/tree-sitter-gleam'

rockspec_format = '3.0'
package = 'tree-sitter-gleam'
version = modrev ..'-'.. specrev

description = {
  summary = 'tree-sitter parser for gleam',
  labels = { 'neovim', 'tree-sitter' } ,
  homepage = 'https://github.com/gleam-lang/tree-sitter-gleam',
  license = 'UNKNOWN'
}

dependencies = { 'lua >= 5.1' } 

build_dependencies = {
  'luarocks-build-treesitter-parser >= 5.0.0',
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tree-sitter-gleam-' .. '9586f38658da115c90e2d01099c83479eb0eea99',
}

build = {
  type = "treesitter-parser",
  lang = "gleam",
  parser = true,
  generate = false,
  generate_from_json = false,
  location = nil,
  copy_directories = { "queries" },
  queries = {
    ["folds.scm"] = [==[
; Folds
[
  (case)
  (function)
  (anonymous_function)
  (type_definition)
] @fold
]==],
    ["highlights.scm"] = [==[
; Keywords
[
  "as"
  "let"
  "panic"
  "todo"
  "type"
  "use"
] @keyword

; Function Keywords
"fn" @keyword.function

; Imports
"import" @keyword.import

; Conditionals
[
  "case"
  "if"
] @keyword.conditional

; Exceptions
"assert" @keyword.exception

; Punctuation
[
  "("
  ")"
  "<<"
  ">>"
  "["
  "]"
  "{"
  "}"
] @punctuation.bracket

[
  ","
  "."
  ":"
  "->"
] @punctuation.delimiter

"#" @punctuation.special

; Operators
[
  "%"
  "&&"
  "*"
  "*."
  "+"
  "+."
  "-"
  "-."
  ".."
  "/"
  "/."
  "<"
  "<."
  "<="
  "<=."
  "="
  "=="
  ">"
  ">."
  ">="
  ">=."
  "|>"
  "||"
] @operator

; Identifiers
(identifier) @variable

; Comments
(comment) @comment @spell

[
  (module_comment)
  (statement_comment)
] @comment.documentation @spell

; Unused Identifiers
[
  (discard)
  (hole)
] @comment

; Modules & Imports
(module) @module

(import
  alias: ((identifier) @module)?)

(remote_type_identifier
  module: (identifier) @module)

(unqualified_import
  name: (identifier) @function)

; Strings
(string) @string

; Bit Strings
(bit_string_segment) @string.special

; Numbers
(integer) @number

(float) @number.float

; Function Parameter Labels
(function_call
  arguments: (arguments
    (argument
      label: (label) @label)))

(function_parameter
  label: (label)? @label
  name: (identifier) @variable.parameter)

; Records
(record
  arguments: (arguments
    (argument
      label: (label) @variable.member)?))

(record_pattern_argument
  label: (label) @variable.member)

(record_update_argument
  label: (label) @variable.member)

(field_access
  record: (identifier) @variable
  field: (label) @variable.member)

(data_constructor_argument
  (label) @variable.member)

; Types
[
  (type_identifier)
  (type_parameter)
  (type_var)
] @type

; Type Qualifiers
[
  "const"
  "external"
  (opacity_modifier)
  (visibility_modifier)
] @keyword.modifier

; Tuples
(tuple_access
  index: (integer) @operator)

; Functions
(function
  name: (identifier) @function)

(function_call
  function: (identifier) @function.call)

(function_call
  function: (field_access
    field: (label) @function.call))

; External Functions
(external_function
  name: (identifier) @function)

(external_function_body
  (string) @module
  .
  (string) @function)

; Constructors
(constructor_name) @type @constructor

([
  (type_identifier)
  (constructor_name)
] @constant.builtin
  (#any-of? @constant.builtin "Ok" "Error"))

; Booleans
((constructor_name) @boolean
  (#any-of? @boolean "True" "False"))

; Pipe Operator
(binary_expression
  operator: "|>"
  right: (identifier) @function)
]==],
    ["indents.scm"] = [==[
; Gleam indents similar to Rust and JavaScript
[
  (anonymous_function)
  (assert)
  (case)
  (case_clause)
  (constant)
  (external_function)
  (function)
  (import)
  (let)
  (list)
  (constant)
  (function)
  (type_definition)
  (type_alias)
  (todo)
  (tuple)
] @indent.begin

[
  ")"
  "]"
  "}"
] @indent.end @indent.branch

; Gleam pipelines are not indented, but other binary expression chains are
((binary_expression
  operator: _ @_operator) @indent.begin
  (#not-eq? @_operator "|>"))
]==],
    ["injections.scm"] = [==[
; Comments
([
  (module_comment)
  (statement_comment)
  (comment)
] @injection.content
  (#set! injection.language "comment"))
]==],
    ["locals.scm"] = [==[
; Let Binding Definition
(let
  pattern: (identifier) @local.definition)

; List Pattern Definitions
(list_pattern
  (identifier) @local.definition)

(list_pattern
  assign: (identifier) @local.definition)

; Tuple Pattern Definition
(tuple_pattern
  (identifier) @local.definition)

; Record Pattern Definition
(record_pattern_argument
  pattern: (identifier) @local.definition)

; Function Parameter Definition
(function_parameter
  name: (identifier) @local.definition)

; References
(identifier) @local.reference

; Block Scope
(block) @local.scope

; Function Body Scope
(function_body) @local.scope

; Case Scope
(case_clause) @local.scope
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
