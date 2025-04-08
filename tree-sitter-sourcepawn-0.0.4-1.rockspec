local git_ref = '6b9bf9cbab91443380d2ca8a2f6c491cc7fac5bf'
local modrev = '0.0.4'
local specrev = '1'

local repo_url = 'https://github.com/nilshelmig/tree-sitter-sourcepawn'

rockspec_format = '3.0'
package = 'tree-sitter-sourcepawn'
version = modrev ..'-'.. specrev

description = {
  summary = 'tree-sitter parser for sourcepawn',
  labels = { 'neovim', 'tree-sitter' } ,
  homepage = 'https://github.com/nilshelmig/tree-sitter-sourcepawn',
  license = 'UNKNOWN'
}

dependencies = { 'lua >= 5.1' } 

build_dependencies = {
  'luarocks-build-treesitter-parser >= 5.0.0',
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tree-sitter-sourcepawn-' .. '6b9bf9cbab91443380d2ca8a2f6c491cc7fac5bf',
}

build = {
  type = "treesitter-parser",
  lang = "sourcepawn",
  parser = true,
  generate = false,
  generate_from_json = false,
  location = nil,
  copy_directories = { "queries" },
  queries = {
    ["highlights.scm"] = [==[
(identifier) @variable

; Assume all-caps names are constants
((identifier) @constant
  (#lua-match? @constant "^[A-Z][A-Z0-9_]+$"))

; Function definitions/declarations
(function_definition
  name: (identifier) @function)

(function_declaration
  name: (identifier) @function)

(parameter_declaration
  name: (identifier) @variable.parameter)

; Methods / Properties
(field_access
  field: (identifier) @variable.member)

; Function calls
(call_expression
  function: (identifier) @function)

(call_expression
  function: (field_access
    field: (identifier) @function.method.call))

; Types
[
  (builtin_type)
  (any_type)
] @type.builtin

(type
  (identifier) @type)

; Variables
(variable_declaration
  name: (identifier) @variable)

(old_variable_declaration
  name: (identifier) @variable)

[
  (system_lib_string)
  (string_literal)
] @string

; Preprocessor
[
  "#include"
  "#tryinclude"
] @keyword.import

[
  (preproc_assert)
  (preproc_pragma)
  (preproc_if)
  (preproc_else)
  (preproc_elseif)
  (preproc_endinput)
  (preproc_endif)
  (preproc_error)
  (preproc_warning)
] @keyword.directive

[
  "#define"
  "#undef"
] @keyword.directive.define

(macro_param) @variable.parameter

(preproc_define
  name: (identifier) @constant)

(preproc_macro
  name: (identifier) @function.macro)

(preproc_undefine
  name: (identifier) @constant)

; Expressions
(view_as) @function.builtin

(sizeof_expression) @function.macro

[
  (this)
  ; https://github.com/alliedmodders/sourcemod/blob/5c0ae11a4619e9cba93478683c7737253ea93ba6/plugins/include/handles.inc#L78
  (hardcoded_symbol)
] @variable.builtin

; Comments
(comment) @comment @spell

; General
(parameter_declaration
  defaultValue: (identifier) @constant)

[
  (fixed_dimension)
  (dimension)
] @punctuation.bracket

(escape_sequence) @string.escape

; Constructors
(new_expression
  class: (identifier) @type
  arguments: (call_arguments) @constructor)

; Methodmaps
(methodmap
  name: (identifier) @type)

(methodmap
  inherits: (identifier) @type)

(methodmap_method_constructor
  name: (identifier) @constructor)

(methodmap_method
  name: (identifier) @function.method)

(methodmap_native
  name: (identifier) @function.method)

(methodmap_property
  name: (identifier) @property)

[
  (methodmap_property_getter)
  (methodmap_property_setter)
] @function.method

; Enum structs
(enum_struct
  name: (identifier) @type)

(enum_struct_field
  name: (identifier) @variable.member)

(enum_struct_method
  name: (identifier) @function.method)

; Non-type Keywords
(variable_storage_class) @keyword.modifier

(visibility) @keyword.modifier

(assertion) @function.builtin

(function_declaration_kind) @keyword.function

[
  "new"
  "delete"
] @keyword.operator

[
  "."
  ","
] @punctuation.delimiter

; Operators
[
  "+"
  "-"
  "*"
  "/"
  "%"
  "++"
  "--"
  "="
  "+="
  "-="
  "*="
  "/="
  "=="
  "!="
  "<"
  ">"
  ">="
  "<="
  "!"
  "&&"
  "||"
  "&"
  "|"
  "~"
  "^"
  "<<"
  ">>"
  ">>>"
  "|="
  "&="
  "^="
  "~="
  "<<="
  ">>="
  "..."
  (ignore_argument)
  (scope_access)
  (rest_operator)
] @operator

; public Plugin myinfo
(struct_declaration
  name: (identifier) @variable.builtin)

; Typedef/Typedef
(typedef
  name: (identifier) @type)

(functag
  name: (identifier) @type)

(funcenum
  name: (identifier) @type)

(typeset
  name: (identifier) @type)

(typedef_expression) @keyword.function ; function void(int x)

; Enums
(enum
  name: (identifier) @type)

(enum_entry
  name: (identifier) @constant)

(enum_entry
  value: (_) @constant)

; Literals
(int_literal) @number

(char_literal) @character

(float_literal) @number.float

(string_literal) @string

(array_literal) @punctuation.bracket

(bool_literal) @boolean

(null) @constant.builtin

((identifier) @constant.builtin
  (#eq? @constant.builtin "INVALID_HANDLE"))

; Keywords
"return" @keyword.return

[
  "if"
  "else"
  "case"
  "default"
  "switch"
] @keyword.conditional

[
  "do"
  "while"
  "for"
  "continue"
  "break"
] @keyword.repeat

[
  "__nullable__"
  "defined"
  "delete"
  "functag"
  "get"
  "methodmap"
  "new"
  "property"
  "public"
  "set"
  "typeset"
  "void"
] @keyword

[
  "enum"
  "funcenum"
  "struct"
  "typedef"
] @keyword.type

[
  "const"
  "native"
  "static"
  "stock"
  "forward"
] @keyword.modifier
]==],
    ["injections.scm"] = [==[
; Parse JSDoc annotations in comments
((comment) @injection.content
  (#set! injection.language "jsdoc"))
]==],
    ["locals.scm"] = [==[
[
  (function_definition)
  (alias_declaration)
  (enum_struct_method)
  (methodmap_method)
  (methodmap_method_constructor)
  (methodmap_method_destructor)
  (methodmap_property_method)
] @local.scope

; Definitions
(variable_declaration
  name: (identifier) @local.definition)

(old_variable_declaration
  name: (identifier) @local.definition)

; References
(identifier) @local.reference
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
