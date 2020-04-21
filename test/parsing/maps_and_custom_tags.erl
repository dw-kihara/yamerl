-module(maps_and_custom_tags).

-include_lib("eunit/include/eunit.hrl").

-define(FILENAME, "test/parsing/" ?MODULE_STRING ".yaml").

single_test_() ->
    ?_assertMatch(
       {yamerl_parser,
        {file, ?FILENAME},
        [],
        <<>>,
        157,
        true,
        [],
        0,
        158,
        11,
        1,
        false,
        10,
        54,
        utf8,
        false,
        undefined,
        _,
        _,
        [],
        {bcoll, root, 0, -1, 1, 1, -1, 1, 1},
        false,
        false,
        false,
        [{impl_key, false, false, undefined, undefined, 1, 1}],
        false,
        false,
        _,
        [],
        0,
        53,
        50,
        undefined,
        undefined,
        _,
        false,
        [],
        [{yamerl_stream_end, 10, 54},
         {yamerl_doc_end, 10, 54},
         {yamerl_collection_end, 10, 54, block, sequence},
         {yamerl_collection_end, 10, 53, flow, mapping},
         {yamerl_scalar, 10, 50,
          {yamerl_tag, 10, 50, {non_specific, "?"}},
          flow, plain, "foo"},
         {yamerl_mapping_value, 10, 48},
         {yamerl_scalar, 10, 45,
          {yamerl_tag, 10, 45, {non_specific, "?"}},
          flow, plain, "bar"},
         {yamerl_mapping_key, 10, 45},
         {yamerl_scalar, 10, 40,
          {yamerl_tag, 10, 40, {non_specific, "?"}},
          flow, plain, "bar"},
         {yamerl_mapping_value, 10, 38},
         {yamerl_scalar, 10, 35,
          {yamerl_tag, 10, 35, {non_specific, "?"}},
          flow, plain, "foo"},
         {yamerl_mapping_key, 10, 35},
         {yamerl_collection_start, 10, 34,
          {yamerl_tag, 10, 3, "tag:example.org,2002:custom"},
          flow, mapping},
         {yamerl_sequence_entry, 10, 1},
         {yamerl_collection_end, 8, 11, block, mapping},
         {yamerl_scalar, 8, 8,
          {yamerl_tag, 8, 8, {non_specific, "?"}},
          flow, plain, "foo"},
         {yamerl_mapping_value, 8, 6},
         {yamerl_scalar, 8, 3,
          {yamerl_tag, 8, 3, {non_specific, "?"}},
          flow, plain, "bar"},
         {yamerl_mapping_key, 8, 3},
         {yamerl_scalar, 7, 8,
          {yamerl_tag, 7, 8, {non_specific, "?"}},
          flow, plain, "bar"},
         {yamerl_mapping_value, 7, 6},
         {yamerl_scalar, 7, 3,
          {yamerl_tag, 7, 3, {non_specific, "?"}},
          flow, plain, "foo"},
         {yamerl_mapping_key, 7, 3},
         {yamerl_collection_start, 7, 3,
          {yamerl_tag, 6, 3, "tag:example.org,2002:custom"},
          block, mapping},
         {yamerl_sequence_entry, 6, 1},
         {yamerl_collection_end, 4, 22, flow, mapping},
         {yamerl_scalar, 4, 19,
          {yamerl_tag, 4, 19, {non_specific, "?"}},
          flow, plain, "foo"},
         {yamerl_mapping_value, 4, 17},
         {yamerl_scalar, 4, 14,
          {yamerl_tag, 4, 14, {non_specific, "?"}},
          flow, plain, "bar"},
         {yamerl_mapping_key, 4, 14},
         {yamerl_scalar, 4, 9,
          {yamerl_tag, 4, 9, {non_specific, "?"}},
          flow, plain, "bar"},
         {yamerl_mapping_value, 4, 7},
         {yamerl_scalar, 4, 4,
          {yamerl_tag, 4, 4, {non_specific, "?"}},
          flow, plain, "foo"},
         {yamerl_mapping_key, 4, 4},
         {yamerl_collection_start, 4, 3,
          {yamerl_tag, 4, 3, {non_specific, "?"}},
          flow, mapping},
         {yamerl_sequence_entry, 4, 1},
         {yamerl_collection_end, 2, 11, block, mapping},
         {yamerl_scalar, 2, 8,
          {yamerl_tag, 2, 8, {non_specific, "?"}},
          flow, plain, "foo"},
         {yamerl_mapping_value, 2, 6},
         {yamerl_scalar, 2, 3,
          {yamerl_tag, 2, 3, {non_specific, "?"}},
          flow, plain, "bar"},
         {yamerl_mapping_key, 2, 3},
         {yamerl_scalar, 1, 8,
          {yamerl_tag, 1, 8, {non_specific, "?"}},
          flow, plain, "bar"},
         {yamerl_mapping_value, 1, 6},
         {yamerl_scalar, 1, 3,
          {yamerl_tag, 1, 3, {non_specific, "?"}},
          flow, plain, "foo"},
         {yamerl_mapping_key, 1, 3},
         {yamerl_collection_start, 1, 3,
          {yamerl_tag, 1, 3, {non_specific, "?"}},
          block, mapping},
         {yamerl_sequence_entry, 1, 1},
         {yamerl_collection_start, 1, 1,
          {yamerl_tag, 1, 1, {non_specific, "?"}},
          block, sequence},
         {yamerl_doc_start, 1, 1, {1, 2}, _},
         {yamerl_stream_start, 1, 1, utf8}]},
      yamerl_parser:file(?FILENAME)
    ).
