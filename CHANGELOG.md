# Changelog

## [3.0.0](https://github.com/phgz/nvim-surround/compare/v2.2.0...v3.0.0) (2025-03-05)


### ⚠ BREAKING CHANGES

* User defined `invalid_key_behavior` handlers will be activated for control characters that don't have defined `surrounds`.
* User defined `invalid_key_behavior` handlers will be activated for control characters that don't have defined `surrounds`.
* Disable "smart" quotes.
* Remove on-the-fly scripting for queries.
* Use a somewhat reasonable naming scheme.
* Revert some changes.
* Pattern/function-defined modifications. ([#113](https://github.com/phgz/nvim-surround/issues/113))
* Add more surround actions. ([#92](https://github.com/phgz/nvim-surround/issues/92))
* Code rewrite, type annotations, docs. ([#66](https://github.com/phgz/nvim-surround/issues/66))
* Improper changing multi-line HTML tags.
* Cursor forward-searches to modify delimiters. ([#36](https://github.com/phgz/nvim-surround/issues/36))
* Add setup function for configuration.

### Features

* Add `&lt;Plug&gt;` mappings; decouple mappings. ([af10059](https://github.com/phgz/nvim-surround/commit/af10059b0f1589a485d9e1b0298172bbf60cdb47))
* Add `exclude` key to `get_selections`. ([e2c22a6](https://github.com/phgz/nvim-surround/commit/e2c22a62fe001eb7ef3bf088f4e0c439c9f9eefd))
* Add `s` alias to default mappings. ([7e3cd3c](https://github.com/phgz/nvim-surround/commit/7e3cd3ccd58a06eb73f4f06f64d46eb99547cd36))
* Add buffer-local mappings ([#28](https://github.com/phgz/nvim-surround/issues/28)) ([cf27dc4](https://github.com/phgz/nvim-surround/commit/cf27dc456860878256bee9e83d42c6c425ef1dcb))
* Add bug report template. ([c079e53](https://github.com/phgz/nvim-surround/commit/c079e53761d52997a08e0abec528e697ed33e623))
* Add cancelling and default for insert surround. ([370f473](https://github.com/phgz/nvim-surround/commit/370f473c0ea0af9f81657cb45fa98620e26a686a))
* Add change surrounding delimiter command. ([90bda47](https://github.com/phgz/nvim-surround/commit/90bda47278a83f9100572ade2cd898d4cdd6555a))
* Add default way to surround line. ([45ff114](https://github.com/phgz/nvim-surround/commit/45ff11425ddc6d7fd52959e9d8140f0a63d79fb6))
* Add feature request template. ([61bf1ef](https://github.com/phgz/nvim-surround/commit/61bf1ef364fa1424734c45c712b0843636d6180e))
* Add insert/function pairs to defaults. ([822b0ea](https://github.com/phgz/nvim-surround/commit/822b0ea207135150b0badd063d0d5cca4ffacb6c))
* Add keymap descriptions. ([306a928](https://github.com/phgz/nvim-surround/commit/306a92830ede75d7d3a48ba04c7e603b73c3f377))
* Add more surround actions. ([#92](https://github.com/phgz/nvim-surround/issues/92)) ([4f36aae](https://github.com/phgz/nvim-surround/commit/4f36aae802b14f0b67dc45776ef4413eca8bc31f))
* Add setup function for configuration. ([261192c](https://github.com/phgz/nvim-surround/commit/261192c947fe7445072499bce9c0027b155050b5))
* Add sponsorship button. ([325ed03](https://github.com/phgz/nvim-surround/commit/325ed0328f6b37d274cc25bea6dd36f42569a26a))
* Add user-defined custom inputs ([#25](https://github.com/phgz/nvim-surround/issues/25)) ([73d9f6a](https://github.com/phgz/nvim-surround/commit/73d9f6a1d95ef52e4a3ebaf0f61e39934c1f9b72))
* Allow cursor to remain fixed after an action. ([#80](https://github.com/phgz/nvim-surround/issues/80)) ([85cfa29](https://github.com/phgz/nvim-surround/commit/85cfa294ebe42420efe43bbde59742a4db4dce68))
* Allow delimiters to have dynamic whitespace. ([a4a075b](https://github.com/phgz/nvim-surround/commit/a4a075ba576593136f3dab5d2e4fb3bb34090682))
* Allow for surrounding multi-line arguments. ([86ad16f](https://github.com/phgz/nvim-surround/commit/86ad16fe446c7b60c90b2a98a14157db0ce71c97))
* Allow user to add React fragments, closes [#54](https://github.com/phgz/nvim-surround/issues/54). ([f5d4cdb](https://github.com/phgz/nvim-surround/commit/f5d4cdba7c8e5f34863029135e6a9d3fec78ea9e))
* Clear command line after setting `opfunc`. ([686f084](https://github.com/phgz/nvim-surround/commit/686f0840b28342e8522ff160d2bdf398da887f7b))
* Complete dot-repeat with aliasing. ([ec3fb1d](https://github.com/phgz/nvim-surround/commit/ec3fb1d1957b350d9ad03ae8818e9ffdaab12386))
* **config:** Automatically wrap `add` key in a table. ([#342](https://github.com/phgz/nvim-surround/issues/342)) ([53a041f](https://github.com/phgz/nvim-surround/commit/53a041f949961fb125d36a10e42beb81f24cb0c1))
* Cursor forward-searches to modify delimiters. ([#36](https://github.com/phgz/nvim-surround/issues/36)) ([6dc9e0a](https://github.com/phgz/nvim-surround/commit/6dc9e0a12ea6b993465d58dd9017f90039ab068e))
* Disable "smart" quotes. ([87839e1](https://github.com/phgz/nvim-surround/commit/87839e18d3953eb8cebd23a007183fd6c48863b5))
* Dot-repeat function-evaluated pairs ([#31](https://github.com/phgz/nvim-surround/issues/31)) ([c0365ae](https://github.com/phgz/nvim-surround/commit/c0365aedbd05f3e3d45c0d78f4ac43bb9ebf2952))
* Highlight changing surrounds. ([#49](https://github.com/phgz/nvim-surround/issues/49)) ([58ffc92](https://github.com/phgz/nvim-surround/commit/58ffc92769cb6b002ae9307046e82be88c0a14b1))
* Highlight selections before surrounding ([#21](https://github.com/phgz/nvim-surround/issues/21)) ([587148c](https://github.com/phgz/nvim-surround/commit/587148c247625db9fe8f675edb55d3db12d9854f))
* Ignore weird Lua pattern-matching case. ([3c4fb09](https://github.com/phgz/nvim-surround/commit/3c4fb09879e17f293494a1deefd99bb9e1d23869))
* Implement `change_line` mapping. ([ff9c981](https://github.com/phgz/nvim-surround/commit/ff9c981202f4bd45dd3c8e6c6aad965d437a7cb8))
* Implement basic delimiter deletion code. ([026ca00](https://github.com/phgz/nvim-surround/commit/026ca001a47fea2c98fcdd1fd5740dee1d20f880))
* Implement basic query-matching. ([a634889](https://github.com/phgz/nvim-surround/commit/a634889cb4a02b370f5c5e51c925ef1bc8b1982f))
* Implement changing surrounding HTML tags. ([d1a8d68](https://github.com/phgz/nvim-surround/commit/d1a8d68f1d0b79671b92dde80411f4905c6e8bff))
* Implement dot-repeat for insertions. ([2b04af4](https://github.com/phgz/nvim-surround/commit/2b04af477903bbc6823611f323e44a8a0ff49295))
* Implement HTML tag deletions. ([aac1920](https://github.com/phgz/nvim-surround/commit/aac1920ca3057ca5edfbb664c412ff038f890e2e))
* Implement single-char aliases. ([8211241](https://github.com/phgz/nvim-surround/commit/8211241677599d1f238f36e1c2076d9a5b5a3da9))
* Implement visual line surrounds. ([b0f6de2](https://github.com/phgz/nvim-surround/commit/b0f6de2ba4dec359290e191b04d2e1e705201a98))
* Implements change aliasing. ([a6d9914](https://github.com/phgz/nvim-surround/commit/a6d99148afa5c7316bebe6d10bf29a9e5e7ee0d2))
* Improve `move_cursor`. ([#334](https://github.com/phgz/nvim-surround/issues/334)) ([ef592b5](https://github.com/phgz/nvim-surround/commit/ef592b5c4c107ae99f5d71946da15fb1ed9bcf72))
* Jump to delimiters for modifications. ([#38](https://github.com/phgz/nvim-surround/issues/38)) ([a3f4c9d](https://github.com/phgz/nvim-surround/commit/a3f4c9d431101ac7860d749793798a236efef491))
* Link to discussions page in issue template. ([4d3ea73](https://github.com/phgz/nvim-surround/commit/4d3ea73c33c24b5bed3ac93cf0c4580488375b56))
* Make `get_selection` optionally accept list. ([#183](https://github.com/phgz/nvim-surround/issues/183)) ([d886e22](https://github.com/phgz/nvim-surround/commit/d886e228a790b41e5239926817dfdc81394abd77))
* Partial change dot-repeat working. ([e4349f2](https://github.com/phgz/nvim-surround/commit/e4349f2bf3581cafda3644a343d6e6d6b7a74529))
* Partial delete dot-repeat working. ([d050a82](https://github.com/phgz/nvim-surround/commit/d050a826db90929ddc456d8df2858870924f655c))
* Pass arguments to surround-creating functions. ([#35](https://github.com/phgz/nvim-surround/issues/35)) ([f1f11c7](https://github.com/phgz/nvim-surround/commit/f1f11c7ab825c4425beb1956d2a84667fdbe0eaf))
* Pattern/function-defined modifications. ([#113](https://github.com/phgz/nvim-surround/issues/113)) ([a06dea1](https://github.com/phgz/nvim-surround/commit/a06dea11e7fdcf338776fa51fa5277163ffb048d))
* Remove on-the-fly scripting for queries. ([48540cf](https://github.com/phgz/nvim-surround/commit/48540cf24c1744c8f089099270fa8acea2672125))
* Rudimentary aliasing, rewrite delete opfunc. ([b2c04c6](https://github.com/phgz/nvim-surround/commit/b2c04c6494c313381c63fe5523fb5052b8c76cf9))
* Smart quote modification. ([#41](https://github.com/phgz/nvim-surround/issues/41)) ([13d1401](https://github.com/phgz/nvim-surround/commit/13d1401bed5026cd948db708c343f029bc720c90))
* Start the beginnings of queries. ([df1c68f](https://github.com/phgz/nvim-surround/commit/df1c68f8fd6252a5657479aab88742f2f5f2c6b8))
* Support control characters for modifying `surrounds`. ([#179](https://github.com/phgz/nvim-surround/issues/179)) ([#209](https://github.com/phgz/nvim-surround/issues/209)) ([e65628a](https://github.com/phgz/nvim-surround/commit/e65628a21131b83e89d4dec9842f47ed1e41aee7))
* Support control characters in `surrounds`. ([#179](https://github.com/phgz/nvim-surround/issues/179)) ([#211](https://github.com/phgz/nvim-surround/issues/211)) ([ebdd22d](https://github.com/phgz/nvim-surround/commit/ebdd22d2040798d0b5a5e50d72d940e95f308121))
* Update bug report template. ([f30670c](https://github.com/phgz/nvim-surround/commit/f30670c886b632599c7b4cf391156f3bfe6bd7bf))
* Update the bug report template. ([193193d](https://github.com/phgz/nvim-surround/commit/193193d377ad0ff32f539dcd087c56e6620d7fb6))
* Use a somewhat reasonable naming scheme. ([8431c4e](https://github.com/phgz/nvim-surround/commit/8431c4ee8d74021e51261d5b62aa45525d71ed84))


### Bug Fixes

* `&lt;Plug&gt;(nvim-surround-insert) mapping`. ([#176](https://github.com/phgz/nvim-surround/issues/176)) ([6b45fbf](https://github.com/phgz/nvim-surround/commit/6b45fbffdabb2d8cd80d310006c92e59cec8fd74))
* A few small bugs. ([#47](https://github.com/phgz/nvim-surround/issues/47)) ([f0297d9](https://github.com/phgz/nvim-surround/commit/f0297d9a8db4a3acb5006de9dec7b2575bbc8b1c))
* Add bang to the `g@` normal command. ([#297](https://github.com/phgz/nvim-surround/issues/297)) ([0c02c52](https://github.com/phgz/nvim-surround/commit/0c02c52182a9c2a7fa7e122b4037f6408e98434a))
* Add final HTML tag angle bracket only once. ([#82](https://github.com/phgz/nvim-surround/issues/82)) ([ab38863](https://github.com/phgz/nvim-surround/commit/ab3886368ac5e5ae6dc4f69e24fc58fb9fca9873))
* Add indentation when using line mode. ([#185](https://github.com/phgz/nvim-surround/issues/185)) ([9da7ced](https://github.com/phgz/nvim-surround/commit/9da7ced872fd7d654f2677b1a11d1f294cfaa66d))
* Add protected call around Tree-sitter module. ([d91787d](https://github.com/phgz/nvim-surround/commit/d91787d5a716623be7cec3be23c06c0856dc21b8))
* Allow highlights to be disabled. ([1d5a090](https://github.com/phgz/nvim-surround/commit/1d5a090d79bc4c6242116427c4372b7a0633276d))
* Allow setup to be called without a table. ([59b644d](https://github.com/phgz/nvim-surround/commit/59b644d282d729a36b9a9bd43a71ae817e244c92))
* Allow user to cancel HTML tag creation. ([cb321ce](https://github.com/phgz/nvim-surround/commit/cb321cea4b25c3d7ba1b1bf553e6641dad8840b0))
* Allow users to cancel actions with `&lt;C-c&gt;`. ([45bf79c](https://github.com/phgz/nvim-surround/commit/45bf79cc9b788b4c5076b34e0d01034483b5c762))
* Async input when HTML tag properties. ([#23](https://github.com/phgz/nvim-surround/issues/23)) ([3baaa0b](https://github.com/phgz/nvim-surround/commit/3baaa0bac4538e35f2d2d29c71f58adba9ae25eb))
* Bounds check when restoring cursor position. ([#365](https://github.com/phgz/nvim-surround/issues/365)) ([74f1367](https://github.com/phgz/nvim-surround/commit/74f13671f9680779913ac8818def8a077b66e2ba))
* **buffer:** `set_mark` should check for validity of input. ([841f83f](https://github.com/phgz/nvim-surround/commit/841f83fd458de37c2a5bd63cece1088448529b6c))
* Bug with reverse-search deleting nested quotes. ([a787b5b](https://github.com/phgz/nvim-surround/commit/a787b5bc3f39f57ddbcad6e13195ecee4d9da7a7))
* Can change/delete surrounds at 1, 1. ([a715f23](https://github.com/phgz/nvim-surround/commit/a715f234407153c0b92f22bd0af3170c22d8ddf0))
* Change `reset_cursor` semantics. ([a207e3b](https://github.com/phgz/nvim-surround/commit/a207e3b9906f86ecf48a90d94bb2eb703c141798))
* Change type annotations to `|nil` from `?`. ([1ac5abf](https://github.com/phgz/nvim-surround/commit/1ac5abf6b6c9fdfbf4d793b9bf3a3b0938c6faf3))
* Checks if the cursor is inside a pair before changing/deleting. ([1bd7a2b](https://github.com/phgz/nvim-surround/commit/1bd7a2bc011a82f798a955ba09e61648e27d723a))
* Clear highlights if insert is canceled. ([70adf32](https://github.com/phgz/nvim-surround/commit/70adf329c617bad1343e47531d29f599676ea9cb))
* **config:** User-defined surrounds fallback on defaults. ([29929a5](https://github.com/phgz/nvim-surround/commit/29929a54a88f2764a47f1d19fdc7932eeaa576fb))
* Correctly restore visual selection marks. ([#155](https://github.com/phgz/nvim-surround/issues/155)) ([c6a1993](https://github.com/phgz/nvim-surround/commit/c6a1993199237f875f9407eb1c0aa9176117a3ff))
* Default delete should work if `find` key is sane. ([#331](https://github.com/phgz/nvim-surround/issues/331)) ([6d2be37](https://github.com/phgz/nvim-surround/commit/6d2be378dbccfed0b4db4abad007bb9ad33342b3))
* Delete surrounds exclusively around cursor. ([6cef5fc](https://github.com/phgz/nvim-surround/commit/6cef5fceff6b981c1dc6315b7e325c79b89cad52))
* Don't re-indent single-line surrounds. ([2fca63c](https://github.com/phgz/nvim-surround/commit/2fca63c88a6b827019ad9d01f20e30b6499e1d45))
* Don't translate termcodes twice on input ([#326](https://github.com/phgz/nvim-surround/issues/326)) ([de828d6](https://github.com/phgz/nvim-surround/commit/de828d6a98a3617c8f6309ef0235148b698e4ee0))
* Dot-repeat line surrounds. ([#262](https://github.com/phgz/nvim-surround/issues/262)) ([aa27de7](https://github.com/phgz/nvim-surround/commit/aa27de7929710e781ac039dabf0ff739218eed65))
* **dot-repeat:** Clear dot-repeat after indentation ([#306](https://github.com/phgz/nvim-surround/issues/306)) ([8f2af76](https://github.com/phgz/nvim-surround/commit/8f2af76134f37058dc4c27a24bc5f86c9cae76dc))
* Enable deleting multi-line surrounds. ([980070a](https://github.com/phgz/nvim-surround/commit/980070a9b3b55dd321d729a51a8c820f181ca14f))
* Error on invalid key, bad indent in insert_surround(). ([#103](https://github.com/phgz/nvim-surround/issues/103)) ([030a437](https://github.com/phgz/nvim-surround/commit/030a4373aea4354d28052108650bf4e916d3283a))
* Error when deleting using opening brackets. ([58f6d99](https://github.com/phgz/nvim-surround/commit/58f6d996c2b8a36c2e3ecc79615a2659898ef967))
* Error when plugin is lazy-loaded. ([#40](https://github.com/phgz/nvim-surround/issues/40)) ([56590ea](https://github.com/phgz/nvim-surround/commit/56590ea1f6c1a3b306a500b92b4b1ad3f6acb9b1))
* Failing test cases due to Tree-sitter dependency. ([c057fb8](https://github.com/phgz/nvim-surround/commit/c057fb81f1496a88722e201eeb71bba06d532076))
* Fix catastrophic error that broke everything. ([c323fa5](https://github.com/phgz/nvim-surround/commit/c323fa5c8e84a59ab9aa63e07bdb28cc8c124c2a))
* Fix quote bug, closes [#172](https://github.com/phgz/nvim-surround/issues/172). ([58b0a55](https://github.com/phgz/nvim-surround/commit/58b0a55e8922e17250376045460df178ab7cf1c1))
* Get HTML format error ([#30](https://github.com/phgz/nvim-surround/issues/30)) ([86f1116](https://github.com/phgz/nvim-surround/commit/86f11168f37676778201cb39dce44476db2febce))
* Handle cancellation of user-inputted delimiters. ([#89](https://github.com/phgz/nvim-surround/issues/89)) ([a1b46b3](https://github.com/phgz/nvim-surround/commit/a1b46b32d78325fafa8ca2a1a7dea45d1e986023))
* Handle multi-byte characters for change/delete. ([#318](https://github.com/phgz/nvim-surround/issues/318)) ([f929665](https://github.com/phgz/nvim-surround/commit/f9296652f5b9cf13c15919714e4e7b9349906c26))
* Handle special characters for getchar. ([#170](https://github.com/phgz/nvim-surround/issues/170)) ([1f79449](https://github.com/phgz/nvim-surround/commit/1f79449d14463c6512a6f806f0023301e7a2c713))
* HTML tag types can contain dashes. ([35ac9fe](https://github.com/phgz/nvim-surround/commit/35ac9fe8004b7d86f4da48542a2e48563194e07f))
* Improper changing multi-line HTML tags. ([985e0b5](https://github.com/phgz/nvim-surround/commit/985e0b595e2fdd73713aebc838092b8c07aa8293))
* Improper lookbehind for quotes. ([1d83fec](https://github.com/phgz/nvim-surround/commit/1d83fecd27c6b4b66cc529930552d205fbecb660))
* Improper table handling for `add`, resolves [#191](https://github.com/phgz/nvim-surround/issues/191). ([d51d554](https://github.com/phgz/nvim-surround/commit/d51d554ae4721a20c892998a76d8a2edf6f75c08))
* Insert surrounds for line-mode operators. ([171d6e2](https://github.com/phgz/nvim-surround/commit/171d6e2fcba9831beada300530d0391b02557a7e))
* Jumping direction logic. ([a2df8bf](https://github.com/phgz/nvim-surround/commit/a2df8bf0c4181c445a1feb579f3e00efdcc2ca45))
* Keymap conflict with vim-surround-funk. ([b0fc0ee](https://github.com/phgz/nvim-surround/commit/b0fc0eefda3d47aed23d40f2c8ce63d88b10be42))
* Keymap for `change_line`. ([#286](https://github.com/phgz/nvim-surround/issues/286)) ([bd7bb26](https://github.com/phgz/nvim-surround/commit/bd7bb26a0d264c886bae7e0a09dd5b56daf46376))
* Keymap issue with `cmdheight = 0` ([#22](https://github.com/phgz/nvim-surround/issues/22)) ([1e30881](https://github.com/phgz/nvim-surround/commit/1e308812e9bf9b98c4cf5fa7500b569385a19f96))
* Mark fields in user_option and user_surround as optional ([#308](https://github.com/phgz/nvim-surround/issues/308)) ([f7bb9fc](https://github.com/phgz/nvim-surround/commit/f7bb9fc4d68ad319d94b1d98ed16f279811f5cc8))
* Minor bugs. ([7f7ca04](https://github.com/phgz/nvim-surround/commit/7f7ca045648912c03f565e91e2b6ba91e85b9a33))
* Nonexistent NOOP function in `utils`. ([6754fc7](https://github.com/phgz/nvim-surround/commit/6754fc7fed4ef1fe6de0abb1f61f6042bf477105))
* Prevent jumps when adding surrounds, closes [#91](https://github.com/phgz/nvim-surround/issues/91). ([d1ed31c](https://github.com/phgz/nvim-surround/commit/d1ed31c6367402f433d5fd09118c8e4eb4eb629a))
* Properly determine if `$` is used in a block surround. ([#328](https://github.com/phgz/nvim-surround/issues/328)) ([23f4966](https://github.com/phgz/nvim-surround/commit/23f4966aba1d90d9ea4e06dfe3dd7d07b8420611))
* Properly handle linewise normal surrounds. ([90821ad](https://github.com/phgz/nvim-surround/commit/90821ad682aac189cd0a38fd83fc96f0cbcc5d29))
* README spacing. ([86b5cf8](https://github.com/phgz/nvim-surround/commit/86b5cf8e3ea16d5b00e45313e1d0d251262c840d))
* Remove `remap = true` from keymaps. ([#219](https://github.com/phgz/nvim-surround/issues/219)) ([89c82e7](https://github.com/phgz/nvim-surround/commit/89c82e7c71a735f7c7d6330ba55a2fffb962d1e1))
* Remove final two references to `utils.get_input`. ([78f1053](https://github.com/phgz/nvim-surround/commit/78f10536d30a4f86155354636335263a0e6a7891))
* Remove visual surround dot-repeat interference. ([6724e64](https://github.com/phgz/nvim-surround/commit/6724e6446cf28b64f586d969aeb4dc136ae2fb60))
* replace deprecated `vim.tbl_islist` by native Lua function ([#323](https://github.com/phgz/nvim-surround/issues/323)) ([38973ca](https://github.com/phgz/nvim-surround/commit/38973caecd9f77e25227f8bc6cb11a73a0695d1c))
* Respect `move_cursor = false` when dot-repeating. ([#254](https://github.com/phgz/nvim-surround/issues/254)) ([ec6a721](https://github.com/phgz/nvim-surround/commit/ec6a7215a5d1707f5bf9d80262f26e13bfacc757))
* Restore window view after finding nearest selections. ([#227](https://github.com/phgz/nvim-surround/issues/227)) ([97f7309](https://github.com/phgz/nvim-surround/commit/97f7309273fde2a81937ab3b8bdeabdf2787283c))
* Revert some changes. ([ce01942](https://github.com/phgz/nvim-surround/commit/ce01942a8f5d9e170493a67235568fe294cbb83d))
* Revert to pattern-based function calls by default. ([ba19320](https://github.com/phgz/nvim-surround/commit/ba19320c14b5425c57c02c486c3eff76d7c8769f))
* spelling mistakes ([#162](https://github.com/phgz/nvim-surround/issues/162)) ([7e5096b](https://github.com/phgz/nvim-surround/commit/7e5096b736ae252d04d543af6a13280125dc6d0f))
* Support Lua 5.1 instead of only LuaJIT. ([#169](https://github.com/phgz/nvim-surround/issues/169)) ([fa7648e](https://github.com/phgz/nvim-surround/commit/fa7648e3ed5ec22f32de06d366cf8b80141998f0))
* Support multi-byte mappings for aliases. ([42e69e5](https://github.com/phgz/nvim-surround/commit/42e69e5bc9fd6f0db5fcdaa3be2b6724e4ba7bb4))
* Translate char to termcodes when reading input ([#271](https://github.com/phgz/nvim-surround/issues/271)) ([#273](https://github.com/phgz/nvim-surround/issues/273)) ([cfa2da7](https://github.com/phgz/nvim-surround/commit/cfa2da7f469f1e759f2a961bc25fa4ccfe1795c2))
* Tweak pattern for function calls. ([3accef6](https://github.com/phgz/nvim-surround/commit/3accef664a99839ab1a298b02e495c9bee3cd2a3))
* Typo in help docs. ([fa5b365](https://github.com/phgz/nvim-surround/commit/fa5b365e847909df35cea184e13b7b811f346cda))
* Update function pattern. ([c0835d2](https://github.com/phgz/nvim-surround/commit/c0835d2a33898b1509e804b7a3ad49737b90d98a))
* Use `line_mode` parameter when possible. ([#194](https://github.com/phgz/nvim-surround/issues/194)) ([ad56e62](https://github.com/phgz/nvim-surround/commit/ad56e6234bf42fb7f7e4dccc7752e25abd5ec80e))
* Use `vim.treesitter.query.parse()`. ([#228](https://github.com/phgz/nvim-surround/issues/228)) ([b3abce1](https://github.com/phgz/nvim-surround/commit/b3abce1d8c4f02d40df9a902ec1e38e0eed51f76))
* UTF-8 characters in surround table. ([#333](https://github.com/phgz/nvim-surround/issues/333)) ([f93d56d](https://github.com/phgz/nvim-surround/commit/f93d56d423eb4ffd6a4d4d864c9d3a8fb25809a7))
* **utils:** Ensure chars is a table in ipairs. ([#192](https://github.com/phgz/nvim-surround/issues/192)) ([64e2106](https://github.com/phgz/nvim-surround/commit/64e21061953102b19bbb22e824fbb96054782799))
* Visual selection highlight disappearing. ([#312](https://github.com/phgz/nvim-surround/issues/312)) ([a72a97c](https://github.com/phgz/nvim-surround/commit/a72a97c8ca697ad0000456a40bb931822fc06eab))
* Whitespace handling when delimiters are on own line. ([#226](https://github.com/phgz/nvim-surround/issues/226)) ([808fc7d](https://github.com/phgz/nvim-surround/commit/808fc7d5899d88065ba4a4360f04f76cf9ff94b1))
* wrong last_pos in visual mode when vim.o.selection='exclusive' ([#158](https://github.com/phgz/nvim-surround/issues/158)) ([81f672a](https://github.com/phgz/nvim-surround/commit/81f672ad6525b5d8cc27bc6ff84636cc12664485))


### Code Refactoring

* Code rewrite, type annotations, docs. ([#66](https://github.com/phgz/nvim-surround/issues/66)) ([6d0a731](https://github.com/phgz/nvim-surround/commit/6d0a7313446cffcab5ecd2863fbd33489c33e20d))

## [2.3.2](https://github.com/kylechui/nvim-surround/compare/v2.3.1...v2.3.2) (2025-01-18)


### Bug Fixes

* Bounds check when restoring cursor position. ([#365](https://github.com/kylechui/nvim-surround/issues/365)) ([3994651](https://github.com/kylechui/nvim-surround/commit/39946511840a0b4c3a284b904825272467ff9bc7))

## [2.3.1](https://github.com/kylechui/nvim-surround/compare/v2.3.0...v2.3.1) (2024-11-28)


### Bug Fixes

* Support multi-byte mappings for aliases. ([d66b6a2](https://github.com/kylechui/nvim-surround/commit/d66b6a206f269e46637f16315d2defc35fc3647e))

## [2.3.0](https://github.com/kylechui/nvim-surround/compare/v2.2.0...v2.3.0) (2024-06-24)


### Features

* **config:** Automatically wrap `add` key in a table. ([#342](https://github.com/kylechui/nvim-surround/issues/342)) ([00d591c](https://github.com/kylechui/nvim-surround/commit/00d591c9044c967b2e37b597566576edd9d2b9b2))

## [2.2.0](https://github.com/kylechui/nvim-surround/compare/v2.1.11...v2.2.0) (2024-06-08)


### Features

* Improve `move_cursor`. ([#334](https://github.com/kylechui/nvim-surround/issues/334)) ([ef592b5](https://github.com/kylechui/nvim-surround/commit/ef592b5c4c107ae99f5d71946da15fb1ed9bcf72))

## [2.1.11](https://github.com/kylechui/nvim-surround/compare/v2.1.10...v2.1.11) (2024-06-06)


### Bug Fixes

* UTF-8 characters in surround table. ([#333](https://github.com/kylechui/nvim-surround/issues/333)) ([f93d56d](https://github.com/kylechui/nvim-surround/commit/f93d56d423eb4ffd6a4d4d864c9d3a8fb25809a7))

## [2.1.10](https://github.com/kylechui/nvim-surround/compare/v2.1.9...v2.1.10) (2024-05-30)


### Bug Fixes

* Default delete should work if `find` key is sane. ([#331](https://github.com/kylechui/nvim-surround/issues/331)) ([6d2be37](https://github.com/kylechui/nvim-surround/commit/6d2be378dbccfed0b4db4abad007bb9ad33342b3))
* Don't translate termcodes twice on input ([#326](https://github.com/kylechui/nvim-surround/issues/326)) ([de828d6](https://github.com/kylechui/nvim-surround/commit/de828d6a98a3617c8f6309ef0235148b698e4ee0))
* Typo in help docs. ([fa5b365](https://github.com/kylechui/nvim-surround/commit/fa5b365e847909df35cea184e13b7b811f346cda))

## [2.1.9](https://github.com/kylechui/nvim-surround/compare/v2.1.8...v2.1.9) (2024-05-29)


### Bug Fixes

* Properly determine if `$` is used in a block surround. ([#328](https://github.com/kylechui/nvim-surround/issues/328)) ([23f4966](https://github.com/kylechui/nvim-surround/commit/23f4966aba1d90d9ea4e06dfe3dd7d07b8420611))

## [2.1.8](https://github.com/kylechui/nvim-surround/compare/v2.1.7...v2.1.8) (2024-05-16)


### Bug Fixes

* replace deprecated `vim.tbl_islist` by native Lua function ([#323](https://github.com/kylechui/nvim-surround/issues/323)) ([38973ca](https://github.com/kylechui/nvim-surround/commit/38973caecd9f77e25227f8bc6cb11a73a0695d1c))

## [2.1.7](https://github.com/kylechui/nvim-surround/compare/v2.1.6...v2.1.7) (2024-04-30)


### Bug Fixes

* Handle multi-byte characters for change/delete. ([#318](https://github.com/kylechui/nvim-surround/issues/318)) ([f929665](https://github.com/kylechui/nvim-surround/commit/f9296652f5b9cf13c15919714e4e7b9349906c26))

## [2.1.6](https://github.com/kylechui/nvim-surround/compare/v2.1.5...v2.1.6) (2024-04-11)


### Bug Fixes

* Mark fields in user_option and user_surround as optional ([#308](https://github.com/kylechui/nvim-surround/issues/308)) ([f7bb9fc](https://github.com/kylechui/nvim-surround/commit/f7bb9fc4d68ad319d94b1d98ed16f279811f5cc8))

## [2.1.5](https://github.com/kylechui/nvim-surround/compare/v2.1.4...v2.1.5) (2024-02-27)


### Bug Fixes

* Add bang to the `g@` normal command. ([#297](https://github.com/kylechui/nvim-surround/issues/297)) ([0c02c52](https://github.com/kylechui/nvim-surround/commit/0c02c52182a9c2a7fa7e122b4037f6408e98434a))
* **dot-repeat:** Clear dot-repeat after indentation ([#306](https://github.com/kylechui/nvim-surround/issues/306)) ([8f2af76](https://github.com/kylechui/nvim-surround/commit/8f2af76134f37058dc4c27a24bc5f86c9cae76dc))
* Visual selection highlight disappearing. ([#312](https://github.com/kylechui/nvim-surround/issues/312)) ([a72a97c](https://github.com/kylechui/nvim-surround/commit/a72a97c8ca697ad0000456a40bb931822fc06eab))

## [2.1.4](https://github.com/kylechui/nvim-surround/compare/v2.1.3...v2.1.4) (2023-12-04)


### Bug Fixes

* Keymap for `change_line`. ([#286](https://github.com/kylechui/nvim-surround/issues/286)) ([bd7bb26](https://github.com/kylechui/nvim-surround/commit/bd7bb26a0d264c886bae7e0a09dd5b56daf46376))

## [2.1.3](https://github.com/kylechui/nvim-surround/compare/v2.1.2...v2.1.3) (2023-11-13)


### Bug Fixes

* Translate char to termcodes when reading input ([#271](https://github.com/kylechui/nvim-surround/issues/271)) ([#273](https://github.com/kylechui/nvim-surround/issues/273)) ([cfa2da7](https://github.com/kylechui/nvim-surround/commit/cfa2da7f469f1e759f2a961bc25fa4ccfe1795c2))

## [2.1.2](https://github.com/kylechui/nvim-surround/compare/v2.1.1...v2.1.2) (2023-10-22)


### Bug Fixes

* Dot-repeat line surrounds. ([#262](https://github.com/kylechui/nvim-surround/issues/262)) ([aa27de7](https://github.com/kylechui/nvim-surround/commit/aa27de7929710e781ac039dabf0ff739218eed65))

## [2.1.1](https://github.com/kylechui/nvim-surround/compare/v2.1.0...v2.1.1) (2023-08-05)


### Bug Fixes

* Respect `move_cursor = false` when dot-repeating. ([#254](https://github.com/kylechui/nvim-surround/issues/254)) ([ec6a721](https://github.com/kylechui/nvim-surround/commit/ec6a7215a5d1707f5bf9d80262f26e13bfacc757))

## [2.1.0](https://github.com/kylechui/nvim-surround/compare/v2.0.5...v2.1.0) (2023-05-28)


### Features

* Implement `change_line` mapping. ([ff9c981](https://github.com/kylechui/nvim-surround/commit/ff9c981202f4bd45dd3c8e6c6aad965d437a7cb8))


### Bug Fixes

* **buffer:** `set_mark` should check for validity of input. ([841f83f](https://github.com/kylechui/nvim-surround/commit/841f83fd458de37c2a5bd63cece1088448529b6c))

## [2.0.5](https://github.com/kylechui/nvim-surround/compare/v2.0.4...v2.0.5) (2023-04-02)


### Bug Fixes

* Don't re-indent single-line surrounds. ([2fca63c](https://github.com/kylechui/nvim-surround/commit/2fca63c88a6b827019ad9d01f20e30b6499e1d45))

## [2.0.4](https://github.com/kylechui/nvim-surround/compare/v2.0.3...v2.0.4) (2023-03-28)


### Bug Fixes

* Whitespace handling when delimiters are on own line. ([#226](https://github.com/kylechui/nvim-surround/issues/226)) ([808fc7d](https://github.com/kylechui/nvim-surround/commit/808fc7d5899d88065ba4a4360f04f76cf9ff94b1))

## [2.0.3](https://github.com/kylechui/nvim-surround/compare/v2.0.2...v2.0.3) (2023-03-27)


### Bug Fixes

* Restore window view after finding nearest selections. ([#227](https://github.com/kylechui/nvim-surround/issues/227)) ([97f7309](https://github.com/kylechui/nvim-surround/commit/97f7309273fde2a81937ab3b8bdeabdf2787283c))

## [2.0.2](https://github.com/kylechui/nvim-surround/compare/v2.0.1...v2.0.2) (2023-03-27)


### Bug Fixes

* Use `vim.treesitter.query.parse()`. ([#228](https://github.com/kylechui/nvim-surround/issues/228)) ([b3abce1](https://github.com/kylechui/nvim-surround/commit/b3abce1d8c4f02d40df9a902ec1e38e0eed51f76))

## [2.0.1](https://github.com/kylechui/nvim-surround/compare/v2.0.0...v2.0.1) (2023-03-21)


### Bug Fixes

* **config:** User-defined surrounds fallback on defaults. ([29929a5](https://github.com/kylechui/nvim-surround/commit/29929a54a88f2764a47f1d19fdc7932eeaa576fb))

## [2.0.0](https://github.com/kylechui/nvim-surround/compare/v1.0.0...v2.0.0) (2023-03-11)

### ⚠ BREAKING CHANGES

- The function `get_char` has been moved from `utils` to `input`.
- The function `get_delimiters` has been moved from `utils` to `config`.
- The `textobject` field for `config.get_selection` has been deprecated; please
  use `motion` instead.
  [See this comment](https://github.com/kylechui/nvim-surround/issues/77#issuecomment-1215932210).
  - To update your functions, prepend 'a' to the `textobject` key, i.e. `(` →
    `a(`
- The highlight group used has been renamed from
  `NvimSurroundHighlightTextObject` to `NvimSurroundHighlight`.
  [See this comment](https://github.com/kylechui/nvim-surround/issues/77#issuecomment-1215932210).
- User defined `invalid_key_behavior` handlers will be activated for control
  characters that don't have defined `surrounds`. In other words, `<C-a>` is now
  a valid input that can be passed to `invalid_key_behavior`.
  [See this comment](https://github.com/kylechui/nvim-surround/issues/77#issuecomment-1438844045).
  - Note: `<C-c>` is still invalid, and terminates the input.
- Smart quotes have been removed. Modifying quotes will now always operate on
  the _immediately_ surrounding pair of quotes.
  [See this comment](https://github.com/kylechui/nvim-surround/issues/77#issuecomment-1309817520).

### Features

- Add `node` field to `config.get_selection`, allowing users to retrieve
  selections based on treesitter nodes.
- Add `indent_lines` field to `setup`, allowing users to configure what
  indentation program should be used for certain line-wise surrounds (if any).
- Add `<Plug>` mappings; decouple mappings.
  ([af10059](https://github.com/kylechui/nvim-surround/commit/af10059b0f1589a485d9e1b0298172bbf60cdb47))
- Add `exclude` key to `config.get_selections`.
  ([e2c22a6](https://github.com/kylechui/nvim-surround/commit/e2c22a62fe001eb7ef3bf088f4e0c439c9f9eefd))
- Implement basic query-matching.
  ([a634889](https://github.com/kylechui/nvim-surround/commit/a634889cb4a02b370f5c5e51c925ef1bc8b1982f))

### Bug Fixes

- `<Plug>(nvim-surround-insert)` mapping.
  ([#176](https://github.com/kylechui/nvim-surround/issues/176))
  ([6b45fbf](https://github.com/kylechui/nvim-surround/commit/6b45fbffdabb2d8cd80d310006c92e59cec8fd74))
- Add indentation when using line mode.
  ([#185](https://github.com/kylechui/nvim-surround/issues/185))
  ([9da7ced](https://github.com/kylechui/nvim-surround/commit/9da7ced872fd7d654f2677b1a11d1f294cfaa66d))
- Add protected call around Tree-sitter module.
  ([d91787d](https://github.com/kylechui/nvim-surround/commit/d91787d5a716623be7cec3be23c06c0856dc21b8))
- Change `reset_cursor` semantics.
  ([a207e3b](https://github.com/kylechui/nvim-surround/commit/a207e3b9906f86ecf48a90d94bb2eb703c141798))
- Change type annotations to `|nil` from `?`.
  ([1ac5abf](https://github.com/kylechui/nvim-surround/commit/1ac5abf6b6c9fdfbf4d793b9bf3a3b0938c6faf3))
- Correctly restore visual selection marks.
  ([#155](https://github.com/kylechui/nvim-surround/issues/155))
  ([c6a1993](https://github.com/kylechui/nvim-surround/commit/c6a1993199237f875f9407eb1c0aa9176117a3ff))
- Failing test cases due to Tree-sitter dependency.
  ([c057fb8](https://github.com/kylechui/nvim-surround/commit/c057fb81f1496a88722e201eeb71bba06d532076))
- Fix catastrophic error that broke everything.
  ([c323fa5](https://github.com/kylechui/nvim-surround/commit/c323fa5c8e84a59ab9aa63e07bdb28cc8c124c2a))
- Fix quote bug, closes
  [#172](https://github.com/kylechui/nvim-surround/issues/172).
  ([58b0a55](https://github.com/kylechui/nvim-surround/commit/58b0a55e8922e17250376045460df178ab7cf1c1))
- Handle special characters for `getchar`.
  ([#170](https://github.com/kylechui/nvim-surround/issues/170))
  ([1f79449](https://github.com/kylechui/nvim-surround/commit/1f79449d14463c6512a6f806f0023301e7a2c713))
- Improper look-behind for quotes.
  ([1d83fec](https://github.com/kylechui/nvim-surround/commit/1d83fecd27c6b4b66cc529930552d205fbecb660))
- Improper table handling for `add`, resolves
  [#191](https://github.com/kylechui/nvim-surround/issues/191).
  ([d51d554](https://github.com/kylechui/nvim-surround/commit/d51d554ae4721a20c892998a76d8a2edf6f75c08))
- Minor bugs.
  ([7f7ca04](https://github.com/kylechui/nvim-surround/commit/7f7ca045648912c03f565e91e2b6ba91e85b9a33))
- Properly handle linewise normal surrounds.
  ([90821ad](https://github.com/kylechui/nvim-surround/commit/90821ad682aac189cd0a38fd83fc96f0cbcc5d29))
- Remove `remap = true` from keymaps.
  ([#219](https://github.com/kylechui/nvim-surround/issues/219))
  ([89c82e7](https://github.com/kylechui/nvim-surround/commit/89c82e7c71a735f7c7d6330ba55a2fffb962d1e1))
- Revert some changes.
  ([ce01942](https://github.com/kylechui/nvim-surround/commit/ce01942a8f5d9e170493a67235568fe294cbb83d))
- Revert to pattern-based function calls by default.
  ([ba19320](https://github.com/kylechui/nvim-surround/commit/ba19320c14b5425c57c02c486c3eff76d7c8769f))
- Support Lua 5.1 instead of only LuaJIT.
  ([#169](https://github.com/kylechui/nvim-surround/issues/169))
  ([fa7648e](https://github.com/kylechui/nvim-surround/commit/fa7648e3ed5ec22f32de06d366cf8b80141998f0))
- Tweak pattern for function calls.
  ([3accef6](https://github.com/kylechui/nvim-surround/commit/3accef664a99839ab1a298b02e495c9bee3cd2a3))
- Update function pattern.
  ([c0835d2](https://github.com/kylechui/nvim-surround/commit/c0835d2a33898b1509e804b7a3ad49737b90d98a))
- Use `line_mode` parameter when possible.
  ([#194](https://github.com/kylechui/nvim-surround/issues/194))
  ([ad56e62](https://github.com/kylechui/nvim-surround/commit/ad56e6234bf42fb7f7e4dccc7752e25abd5ec80e))
- **utils:** Ensure chars is a table in ipairs.
  ([#192](https://github.com/kylechui/nvim-surround/issues/192))
  ([64e2106](https://github.com/kylechui/nvim-surround/commit/64e21061953102b19bbb22e824fbb96054782799))
- Error when `vim.o.selection='exclusive'`.
  ([#158](https://github.com/kylechui/nvim-surround/issues/158))
  ([81f672a](https://github.com/kylechui/nvim-surround/commit/81f672ad6525b5d8cc27bc6ff84636cc12664485))

### Additional Notes

Sorry for the long time in between releases everybody, I thought I could
implement queries support in a sensible way in a short amount of time, but it
quickly became much more to handle than I had thought. Moving forwards, I aim to
make the plugin "more stable" and to improve the user experience:

- Be more consistent with [SemVer releases](https://semver.org/) (i.e. version
  more frequently)
- Improve the automated testing suite
- Improve the documentation (considering automated documentation)
- Improve the customizability of the plugin (it should do what you think it
  does)
  - This is somewhat accomplished in the current release, as more fields can be
    set to `false`, but could still use some work

Thanks again to everyone for using this!
