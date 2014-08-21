def decode(message)
  until message.split("").uniq == message.split("")
    index_array = find_letters(message)
    if index_array.include? false
      break
    end
    message = update_message(message, index_array)
    puts message
  end
  message.gsub(/_(.*)/, "")
end

def update_message(message, index_array)
  character = message[index_array[0]]
  message.slice!(index_array[0])
  message.slice!(index_array[1] - 1)
  message << character
end

def find_letters(message)
  max_length = 0
  front_i = false
  back_i = false

  front = 0
  puts "******* starting evaluation *******"
  max = message.length
  while front < max
    back = max - 1
    while back > front
      if message[front] == message[back]
        temp_arr = message[(front + 1)...back].split("")
        if temp_arr.uniq == temp_arr
          if message[front..back].length > max_length
            front_i = front
            back_i = back
            max_length = message[front..back].length
          end
        end
      end
      back -= 1
    end
    puts "#{front}/#{max}"
    front += 1
  end
  [front_i, back_i]
end

last_message  = "hpevfwqjmjryhemuqjoiatpjmddxdjwzskdcfgdtbmkbcxrnmjuoyddnqwluimjwvguxehszxzvbmufqlrepncxxbrrzxnzmkoyhrjcstvfazyhrhgssximjdfcmdjusylfkwbedyrsxovrmvjzaljfjmywpfnjgisoqbdyspgzlcmdjmhbpxhzvvhckidzuwzkauffsujmcrhvgeqvasjakgtzlxkthjqwxypmsovjbfshrrxtdvkmbyhejoeydnrdowuwhgmbvxmpixyttglsjgmcoqbberssfjraaqfrkmebsozsjfnubhktbbai_vxbifbofyednnutmxtisvfsktbqfijfzdjoqybuohtztysqelaqyixyaiolbgwylwfisfwubivuoablxsmrqggedwyiqvseevwbcxcfjttdbweedcjgnsorizflsjtmltcoaynsrsupavqwcyzhgiplwkohlhrainazaacvuqblpbzimgoxirejbshnbmdtgsbvlhpnugggencjaczqqiwixrwiyobmlkbwdlwcioqmjhoacdvcqdypxeichmgywocbcafumthdqrbjnpgnnmaasxiaxxfymcyiuqduztqneodstbcnjpeebgxgosoydvpzlqjuroebbehafsemanwprhwkircuhlgcftqsjdusrqetbthxclfokpdlspxzuvhxpbeqqbfpqffsgyilqltfxrmtimcugytazkerhcfnirtavcnmfdyictlncwttkmxyfhgejygfefqrjknuqsfldmjmwjdfqsicfrzbfazchdgznekwmhridelcejnkmcgmpgtihbwmplrtrrefoyhyzxpjjlkabbbgspeokzhpjxsvpfjmdsoripvfrgyzxodoeirwwdaofdmwqrqyvdijlfqyzfspdoyrhewxbpufdqcpqdolkmrnvedixzpfdakggkslxcrjbrmnynviihbkzaqqffkkcgwjbettexhlwlasdfjnslwsmnclhafvebxxfdozsjtdvobikrrsuysujwliobagobxmlyxjeltwzwxpyrnkdxfemotfncyriaycyfemygjmpboocgtsvttqntegvleynwgpjhyyysbltoxljsascsngbgfqmpzgpejzlmdkjzzlfxvagyrasmpzqntgqsvyqjugkhbrbkiqewlyftvsq_______znp_____xkwt______wef______tz______kfc_______ha_______pn__lmg__iakrbtiyfi__uojrxvx__tps__fp__pfpndbi__ggpalde__wmd__kn__ifiadob__hdljdbd__zl__whlwiltbcmt__haagmjg__dwx__oh__utnzudq__xstxxyc__vly__mr__viilzav__swosyvc__i__hnaqxyevjykc__wyfoyir__ewp__ij__mrdavxl__tcdtxqy__fnr__cf__mrkepwj__djhrsau____lhefqxgmuzdgf______tjg__fip__mi__b____xc__vjvhpqy______vff_____wuup_____kqct___htiggvvpetyvco__pqbrlox__ayj__af__dnn__kx__mlitytx____jauna__kncmiym__dlwushk____gjptzccgcnntt__hfqyxzi__eqn__vz__hlh__we__dtfkfvf__g__litm__zeqjtdl__bkdapxs__o__oxeouwerbfjr__ipcqmop__kec__ip__icc__ci__vpxxueu__eq__sau__nhheydy__efqkdgq__us__pzlndhkhdmk__cmfvzwcb_____xdka______trj______yj__xpi__he_______nb_______by__rrn__tvxvigjfpseyjjbrrtsfnmbrokdqtfzhhdtbhtvpiyshmvcqaypfxcvbgvbvwrkanjfcsjnanmktkwimnvynukcmgtqmovkrdmfuduqvbqydagsttictcnsrhfrpoebcehdzhjamykqpjtktufcvokljjijjsrivyhxtgwojgoujyhmekzsoczwlqnruwcuhudgfaijzrkewzgjvorsmabpcdmurctwjrddcnkmfvabjwlbqssihdybgfqchqdvjcsdllrlwmyikuvthguzfbgocaeqktvbcapzdcfjphqnhundtljqjeyfrkjspfvghqddxwxidtjjkctrkfcjmdpqyvavqbntpmkkuswfgbgalrysjfnzezjjscahoodjjelavydefzjmhsqfufsexlvvzziymsyqrcvhsrxjnysioswvjlqdbnwgyjlanmhzkbygkptycdoifsibytbrixggjeiepaybzxhvfsyayeptgpxbhhfkkpromhjykfxnujorlzcmkcmvvgmveyfkgiwgosznfpmbhixsakxfkuxhwcgularehpaguquulrjllxmkfzgnchrxzcfdklytpfnezergkwkhgalqlvdhkdgulgfaxtybqttcjtlgmfwaymaxlwaspyrboibwkzzbtgigyswbtpwxgphcmkfpmvbfjimnxctinqssshofhlvlpqcwiuacjyxyqmvaibezofvatyhpqvjubgcwqeoytloypjphoxeimumuvswxkgamodoxiciwmgxvsenkgdhttzlenjbszrksopicjcjnvsosrapkfilwsaoptdavlfglioqpwoqskbgikksnnuzvmxyrtrbjouvgokxgbnwxnivtykvhjkaydskzoowbhjrlojgeecdoggqqtomcdgrjzmlkhubyaewwtrlyutsptdrrigopueicoganyasrjeaiivzairulklovyrpckwpowprxtvhaeivpudfchxbwvtosmivpcsesbzpsynxitlisuifuehceonjeydljzuzpsgjllcywoxbblitscquxiykcjxhsgkbhfhfrshsrpyrcaetahuwbeybvlvkthxydkapxlfikdwudjkmjjsazajxpuikiqwsifhldfovqoycwmtlmcaycirhcehxnpfadrgyaogpcmomcgtmacnvbwfnimaqqvxijcbpmckwimloiinindfuakqjmpyjisxnbybtywhymnkdoyiphijzelmrazplgfcmcsjiovxqdxmuqulzklgx"
next_message  = "hpevfwqjryhemuqjoiatpddxdjwzskdcfgdtbmkbcxrnmjuoyddnqwluimjwvguxehszzvmufqlrepncxrrxnzmkoyhrjcstvfayhrhgssximjdfcmjusylfkwbeyrsxovrmvjzaljfjmwpfnjgisoqbdspgzlcmdjmhbpxhzvvhckidzuwzkauffsujmcrhvgeqvasjakgtzlxkthjqwxypmsovjbfshrrxtdvkmbyhejoeydnrdowuwhgmbvxmpixyttglsjgmcoqbberssfjraaqfrkmebsozsjfnubhktbbai_vxbifbofyednnutmxtisvfsktbqfijfzdjoqybuohtztysqelaqyixyaiolbgwylwfisfwubivuoablxsmrqggedwyiqvseevwbcxcfjttdbweedcjgnsorizflsjtmltcoaynsrsuavqwcyzhgilwkohlhrainazaacvuqblpbzimgoxirejbshnbmdtgsbvlhpnugggencjaczqqiwixrwiyobmlkbwdlwcioqmjhoacdvcqdypxeichmgywoccafumthdqrjnpgnnmaasxiaxxfymcyiuqduztqneodstbcnjpeebgxgsoydvpzlqjurebbehafsemanwprhwkircuhlgcftqsjdusrqetbthxclfokpdlspxzuvhxpbeqqbfpqffsgyilqltfxrmtimcugytazkerhcfnirtavcnmfdyictlncwttkmxyfhgejygfefqrjknuqsfldmjmwjdfqsicfrzbfazchdgznekwmhridelcejnkmcgmpgtihbwmplrtrrefoyhyzxpjjlkabbbgspeokzhpjxsvpfjmdsoripvfrgyzxodoeirwwdaofdmwqrqyvdijlfqyzfspoyrhewxbpufqcqolmrnvedixzfaggkslxcrjbrmnynviihbkzaqqffkkcgwjbettexhlwlasdfjnslwsmnclhafvebxxfdozsjtdvobikrrsuysujwliobagobxmlyxjeltwzwxpyrnkdxfemotfncyriaycyfemygjmpboocgtsvttqntegvleynwgpjhyyysbltoxljsascsngbgfqmpzgpejzlmdkjzzlfxvagyrasmpzqntgqsvyqjugkhbrbkiqewlyftvsq_______znp_____xkwt______wef______tz______kfc_______ha_______pn__lmg__iakrbtiyfi__uojrxvx__tps__fp__pfpndbi__ggpalde__wmd__kn__ifiadob__hdljdbd__zl__whlwiltbcmt__haagmjg__dwx__oh__utnzudq__xstxxyc__vly__mr__viilzav__swosyvc__i__hnaqxyevjykc__wyfoyir__ewp__ij__mrdavxl__tcdtxqy__fnr__cf__mrkepwj__djhrsau____lhefqxgmuzdgf______tjg__fip__mi__b____xc__vjvhpqy______vff_____wuup_____kqct___htiggvvpetyvco__pqbrlox__ayj__af__dnn__kx__mlitytx____jauna__kncmiym__dlwushk____gjptzccgcnntt__hfqyxzi__eqn__vz__hlh__we__dtfkfvf__g__litm__zeqjtdl__bkdapxs__o__oxeouwerbfjr__ipcqmop__kec__ip__icc__ci__vpxxueu__eq__sau__nhheydy__efqkdgq__us__pzlndhkhdmk__cmfvzwcb_____xdka______trj______yj__xpi__he_______nb_______by__rrn__tvxvigjfpseyjjbrrtsfnmbrokdqtfzhhdtbhtvpiyshmvcqaypfxcvbgvbvwrkanjfcsjnanmktkwimnvynukcmgtqmovkrdmfuduqvbqydagsttictcnsrhfrpoebcehdzhjamykqpjtktufcvokljjijsrivyhxtgwgoujyhmekzsczwlqnruwcuhudgfaijzrkewzgjvorsmabpcdmurctwjrddcnkmfvabjwlbqssihdybgfqchqdvjcsdllrlwmyikuvthguzfbgocaeqktvbcapzdcfjphqnhundtljqjeyfrkjspfvghqddxwxidtjjkctrkfcjmdpqyvavqbntpmkkuswfgbgalrysjfnzezjjscahoodjjelavydefzjmhsqfufsexlvvzziymsyqrcvhsrxjnysioswvjlqdbnwgyjlanmhzkbygkptycdoifsibytbrixggjeiepaybzxhvfsyayeptgpxbhhfkkpromhjyfxnujorlzcmcmvvgmveyfkgwgosznfpmbhxsakxfkuxhwcgularehpaguquulrjllxmkfzgnchrxzcfdklytpfnezergkwkhgalqlvdhkdgulgfaxtybqttcjtlgmfwaymaxlwaspyrboibwkzzbtgigyswbtpwxgphcmkfpmvbfjimnxctinqssshofhlvlpqcwiuacjyxyqmvaibezofvatyhpqvjubgcwqeoytloypjphoxeimumuvswxkgamodoxiciwmgxvsenkgdhttzlenjbszrksopicjcjnvsosrapkfilwsaoptdavlfglioqpwoqskbgikksnnuzvmxyrtrbjouvgokxgbnwxnivtykvhjkaydskzoowbhjrlojgeecdoggqqtomcdgrjzmlkhubyaewwtrlyutsptdrrigopueicoganyasrjeaiivzairulklovyrpckwpowprxtvhaeudfchxbwvtosmcsesbzpsynxitlisuifuehceonjeydljzuzpsgjllcywoxbblitscquxiykcjxhsgkbhfhfrshsrpyrcaetahuwbeybvlvkthxydkapxlfikdwudjkmjjsazajxpuikiqwsifhldfovqoycwmtlmcaycirhcehxnpfadrgyaogpcmomcgtmacnvbwfnimaqqvxijcbpmckwimloiinindfuakqjmpyjisxnbybtywhymnkdoyiphijzelmrazplgfcmcsjiovxqdxmuqulzklgxzvxdijmppyojbdkokidpb"
prior_message = "hpevfwqjryhemuqjoiatpddxdjwzskdcfgdtbmkbcxrnmjuoyddnqwluimjwvguxehszzvmufqlrepncxrrxnzmkoyhrjcstvfayhrhgssximjdfcmjusylfkwbeyrsxovrmvjzaljfjmwpfnjgisoqbdspgzlcmdjmhbpxhzvvhckidzuwzkauffsujmcrhvgeqvasjakgtzlxkthjqwxypmsovjbfshrrxtdvkmbyhejoeydnrdowuwhgmbvxmpixyttglsjgmcoqbberssfjraaqfrkmebsozsjfnubhktbbai_vxbifbofyednnutmxtisvfsktbqfijfzdjoqybuohtztysqelaqyixyaiolbgwylwfisfwubivuoablxsmrqggedwyiqvseevwbcxcfjttdbweedcjgnsorizflsjtmltcoaynsrsuavqwcyzhgilwkohlhrainazaacvuqblpbzimgoxirejbshnbmdtgsbvlhpnugggencjaczqqiwixrwiyobmlkbwdlwcioqmjhoacdvcqdypxeichmgywoccafumthdqrjnpgnnmaasxiaxxfymcyiuqduztqnodstbcnjpebgxgsoydvpzlqjurebbehafsemanwprhwkirchlgcftqsjdsrqetbthxclfokpdlspxzuvhxpbeqqbfpqffsgyilqltfxrmtmugytazkerhfnrtavcnmfdyictlncwttkmxyfhgejygfefqrjknuqsfldmjmwjdfqsicfrzbfazchdgznekwmhridelcejnkmcgmpgtihbwmplrtrrefoyhyzxpjjlkabbbgspeokzhpjxsvpfjmdsoripvfrgyzxodoeirwwdaofdmwqrqyvdijlfqyzfspoyrhewxbpufqcqolmrnvedixzfaggkslxcrjbrmnynviihbkzaqqffkkcgwjbettexhlwlasdfjnslwsmnclhafvebxxfdozsjtdvobikrrsuysujwliobagobxmlyxjeltwzwxpyrnkdxfemotfncyriaycyfemygjmpboocgtsvttqntegvleynwgpjhyyysbltoxljsascsngbgfqmpzgpejzlmdkjzzlfxvagyrasmpzqntgqsvyqjugkhbrbkiqewlyftvsq_______znp_____xkwt______wef______tz______kfc_______ha_______pn__lmg__iakrbtiyfi__uojrxvx__tps__fp__pfpndbi__ggpalde__wmd__kn__ifiadob__hdljdbd__zl__whlwiltbcmt__haagmjg__dwx__oh__utnzudq__xstxxyc__vly__mr__viilzav__swosyvc__i__hnaqxyevjykc__wyfoyir__ewp__ij__mrdavxl__tcdtxqy__fnr__cf__mrkepwj__djhrsau____lhefqxgmuzdgf______tjg__fip__mi__b____xc__vjvhpqy______vff_____wuup_____kqct___htiggvvpetyvco__pqbrlox__ayj__af__dnn__kx__mlitytx____jauna__kncmiym__dlwushk____gjptzccgcnntt__hfqyxzi__eqn__vz__hlh__we__dtfkfvf__g__litm__zeqjtdl__bkdapxs__o__oxeouwerbfjr__ipcqmop__kec__ip__icc__ci__vpxxueu__eq__sau__nhheydy__efqkdgq__us__pzlndhkhdmk__cmfvzwcb_____xdka______trj______yj__xpi__he_______nb_______by__rrn__tvxvigjfpseyjjbrrtsfnmbrokdqtfzhhdtbhtvpiyshmvcqaypfxcvbgvbvwrkanjfcsjnanmktkwimnvynukcmgtqmovkrdmfuduqvbqydagsttictcnsrhfrpoebcehdzhjamykqpjtktufcvokljjijsrivyhxtgwgoujyhmekzsczwlqnruwcuhudgfaijzrkewzgjvorsmabpcdmurctwjrddcnkmfvabjwlbqssihdybgfqchqdvjcsdllrlwmyikuvthguzfbgocaeqktvbcapzdcfjphqnhundtljqjeyfrkjspfvghqddxwxidtjjkctrkfcjmdpqyvavqbntpmkkuswfgbgalrysjfnzezjjscahoodjjelavydefzjmhsqfufsexlvvzziymsyqrcvhsrxjnysioswvjlqdbnwgyjlanmhzkbygkptycdoifsibytbrixggjeiepaybzxhvfsyayeptgpxbhhfkkpromhjyfxnujorlzcmcmvvgmveyfkgwgosznfpmbhxsakxfkuxhwcgularehpaguquulrjllxmkfzgnchrxzcfdklytpfnezergkwkhgalqlvdhkdgulgfaxtybqttcjtlgmfwaymaxlwaspyrboibwkzzbtgigyswbtpwxgphcmkfpmvbfjimnxctinqssshofhlvlpqcwiuacjyxyqmvaibezofvatyhpqvjubgcwqeoytloypjphoxeimumuvswxkgamodoxiciwmgxvsenkgdhttzlenjbszrksopicjcjnvsosrapkfilwsaoptdavlfglioqpwoqskbgikksnnuzvmxyrtrbjouvgokxgbnwxnivtykvhjkaydskzoowbhjrlojgeecdoggqqtomcdgrjzmlkhubyaewwtrlyutsptdrrigopueicoganyasrjeaiivzairulklovyrpckwpowprxtvhaeudfchxbwvtosmcsesbzpsynxitlisuifuehceonjeydljzuzpsgjllcywoxbblitscquxiykcjxhsgkbhfhfrshsrpyrcaetahuwbeybvlvkthxydkapxlfikdwudjkmjjsazajxpuikiqwsifhldfovqoycwmtlmcaycirhcehxnpfadrgyaogpcmomcgtmacnvbwfnimaqqvxijcbpmckwimloiinindfuakqjmpyjisxnbybtywhymnkdoyiphijzelmrazplgfcmcsjiovxqdxmuqulzklgxzvxdijmppyojbdkokidpbeuci"
new_message   = "pevfwqjryemuqjoiatpddxjwzskdcfgtbmkbcxrnmjuoyddnqwluimjwvguxehszzvmufqlrepncxrxnzmkoytvayhrgsximdmjusylfkwbeyrsxovrmvjzaljfjmwpfnjgisoqbdspgzlcmdjmhbpxhzvvhckidzuwzkauffsujmcrhvgeqvasjakgtzlxkthqwxypmsovbfshrrxtdvkmbyhejoeydnrdowuwhgmbvxmpixyttglsjgmcoqbberssfjraaqfrkmebsozsjfnubhktbbai_vxbifbofyednnutmxtisvsktbqfijzdjoqybuohtztysqelaqyixyaiolbgwylwfisfwubivuoablxsmrqggdwyiqvsevwbcxcfjttdbweedcjgnsorizflsjtmltcoaynsrsuavqwcyzhgilwkohlhrainazaacvuqblpbzimgoxirejbshnbmdtsbvlhpnuggencjaczqqiwixrwiyobmlkbwdlwciomjhoacdvdpxeichmwocafumthdqrjnpnnmaasxiaxxfymcyiuqduztqnodstbcnjpebgxgsoydvpzlqjurebbehafsemanwprhwkirchlgcftqsjdsrqetbthxclfokpdlspxzuvhxpbeqqbfpqffsgyilqltfxrmtmugytazkerhfnravmfdyictlwtkmxyfhgejygfefqrknuqsfldmmwjdqsicfrzbazchgzwmhrielcjmcgmpgihbwmplrrrefoyhyzxpjjlkabbbgeokzhpjxjmdsoriprgyzxodoeirwadmwqvijlyzfsphexbpufqcqolmrnvedixzfaggkslxcrjbrmnynviihbkzaqqffkkcgwjbettexhlwlasdfjnslwsmnclhafvebxxfdozsjtdvobikrrsuysujwliobagobxmlyxjeltwzwxpyrnkdxfemotfncyriaycyfemygjmpboocgtsvttqntegvleynwgpjhyyysbltoxljsascsngbgfqmpzgpejzlmdkjzzlfxvayrasmpzqntqsvyqjugkhbrbkiewlyftvs_______znp_____xkwt______wef______tz______kfc_______ha_______pn_lmg_akbtiyfuojxvx__tps__fp__pfpndbi__ggpalde__wmd__kn__ifiadob__hdljdbd__zl__whlwiltbcmt__haagmjg__dwx__oh__utnzudq__xstxxyc__vly__mr__viilzav__swosyvc__i__hnaqxyevjykc__wyfoyir__ewp_ij_mrdavxltcdtxqy__fnr_cf_mrkepwjdjhrsau____lhefqxgmuzdgf______tjg__fip__mi__b____xc__vjvhpqy______vff_____wuup_____kqct___htiggvvpetyvcopqbrlox_ayj_af__dnn__kx__mlitytx____jauna__kncmiymdlwushk__gjptzccgcnntt_hfqyxzi_eqn__vz__hlh__we__dtfkfvf__g__litm_zeqjtdlbkdapxs_o__oxeouwerbfjr__ipcqmop__kec__ip__icc__ci__vpxxueu__eq__sau__nhheydy__efqkdgq__us__pzlndhkhdmk__cmfvzwcb_____xdka______trj______yj__xpi__he_______nb_______by__rrn__tvxvigjfpseyjjbrrsnmbrokdqzhhdtbhtvpiyshmvcqaypfxcvbgvbvwrkanjfcsjnanmktkwimnynukcgtqmokrdfuduqvbqydagsttictcnsrhfrpoebcehdzhjamykqpjtktufcvokljjijsrivyhxtgwgoujyhmekzsczwlqnruwcuhudgfaijzkewzgjvosmabpcdmurctwjrddcnkmfvabjwlbqssihdybgfqchqdvjcsdllrlwmyikuvthguzfgocaeqktvcapzdcfjphqnhundtljqjeyfrkjspfvghqddxwxidtjjkctrkfcjmdpqyvavqbntpmkkuswfgbgalrysjfnzezjjscahoodjjelavydezjmhsqfusexlvvzziymsyqrchrxjysiowjlqdwjlanmhzkkptycdoifsibytbrigjiezxvfsypthfkkpromhjyfxnujorlzcmcmvvmveyfgwoznfpmbhxaxfkuxwcgularepaguquulrjllmkfzgnchrzcfdklytpfnezergkwkhgalqlvdhkdgulgfaxtybqttcjtlgmfwaymaxlwaspyrboibwkzzbtgigyswbtwxgphcmkfmvbfjimnxctinqssshofhlvlpqcwiuacjyxyqmvaibezofvatyhpqvjubgcwqeoytloypjphoxeimuuvswxkgaodoxiciwmgxvsenkgdhttzlenjbszrksopicjcjnvosrapkfilwaoptdavlfglioqpwoqskbgikksnnuzvmxyrtrbjouvgokxgbnwxnivtyvhjkaydszoowbhjrlojgeecdoggqqtomcdgrjzmlkhubyaewwtrlyutsptdrrigopueicoganyasrjeaiivzairulklovyrpckwpowprxtvhaeudfhxbwvtosmsesbzpsynxitlisuifuehceonjeydljzuzpsgjllcywoxbblitscquxiykcjxhsgkbhfhfrshsrpyrcaetahuwbeybvlvkthxydkapxlfikdwudjkmjjsazajxpuikiqwsifhldfovqoycwmtlmcaycirhcehxnpfadrgyaogpcmomcgtmacnvbwfnimaqqvxijcbpmckwimloiinindfuakqjmpyjisxnbybtwhymnkdoiphijzelmrazplgfcmcsjiovxqdxmuqulzklgxzvxdijmppyojbdkokidpbeucidpgtshdrhsjfcjgjenkvqdfyorwmvbygyxpcfeycgqnctftsfqi__r___________frfsnvbaphegxbgskhmky"
newer_message = "pvfwqryuqjoiapdxwzskcfgbkbcxrnmjuoyddnqwluimjwvguxehszzvmufqlrepncxrxnzmkoytvayhrgsximdmjusylfkwbeyrsxovrmvjzaljfjmwpfnjgisoqbspgzlcmjmhbpxhzvvhckidzuwzkauffsujmcrhvgeqvasjakgtzlxkthqwxypmsovbfshrrxtdvkmbyhejoeydnrdowuwhgmbvxmpixyttglsjgmcoqbberssfjraaqfrkmebsozsjfnubhktbbai_vxbifbofyednnutmxtisvsktbqfijzdjoqybuohtztysqelaqyixaiolbgwlwfisfwubivuoablxsmrqggdwyiqvsevwbcxcfjttdbweedcjgnsorizflsjtmltcoaynsrsuavqcyzhgilkohlhrainazaacvuqblpbzimgoxirejbshnbmdtsbvlhpnuggencjaczqqiwixrwiyobmlkbwdlwciomjhoacdvdpxeichmwocafumthdqrjnpnnmaasxiaxxfymcyiuqduztqnodstbcnjpebgxgsoydvpzlqjurebbehafsemanwprhwkirchlgcftqsjdsrqetbthxclfokpdlspxzuvhxpbeqqbfpqffsgyilqltfxrmtmugytazkerhfnravmfdyictlwtkmxyfhgejygfefqrknuqsfldmmwjdqsicfrzbazchgzwhrielcjcgmpgihbwmplrrrefoyhyzxpjjlkabbbgeokzhpjxjmdsoriprgyzxodoeirwadmwqvijlyzfsphexbpufqcqolmrnvedixzfaggkslxcrjbrmnynviihbkzaqqffkkcgwjbettexhladfjnsmnclhafvebxxfdozsjtdvobikrrsuysujwliobagobxmlyxjeltwzwxpyrnkdxfemotfncyriaycyfemygjmpboocgtsvttqntegvlenwgpjhyysbltoxljsascsnbgfqmpzpejzlmdkjzzlfxvayrasmpzqntqsvyqjugkhbrbkiewlyftvs_______znp_____xkwt______wef______tz______kfc_______ha_______pn_lmg_akbtiyfuojxvx__tps__fp__pfpndbi__ggpalde__wmd__kn__ifiadob__hdljdbd__zl__whlwiltbcmt__haagmjg__dwx__oh__utnzudq__xstxxyc__vly__mr__viilzav__swosyvc__i__hnaqxyevjykc__wyfoyir__ewp_ij_mrdavxltcdtxqy__fnr_cf_mrkepwjdjhrsau____lhefqxgmuzdgf______tjg__fip__mi__b____xc__vjvhpqy______vff_____wuup_____kqct___htiggvvpetyvcopqbrlox_ayj_af__dnn__kx__mlitytx____jauna__kncmiymdlwushk__gjptzccgcnntthfqyxzieqn__vz__hlh__we__dtfkfvf__g__litm_zeqjtdlbkdapxs_o__oxeouwerbfjr__ipcqmop__kec__ip__icc__ci__vpxxueu__eq__sau__nhheydy__efqkdgq__us__pzlndhkhdmk__cmfvzwcb_____xdka______trj______yj__xpi__he_______nb_______by__rrn__tvxvigjfpseyjjbrrsnmbrokdqzhhdtbhtvishmvcqafxcvbgvbvwrkanjfcsjnanmktkwimnynukcgtqmokrdfuduqvbqydagsttictcnsrhfrpoebcehdzhjamykqpjtktufcvokljjijsrivyhxtgwgoujyhmekzsczwlqnruwcuhudgfaijzkewzgjvosmabpcdmurctwjrddcnkmfvabjwlbqssidybgfqcqdvjcsdllrlwmyikuvthguzfgocaeqktvcapzdcfjphqnhundtlqjeyfrkspfvghqddxwxidtjjkctrkfcjmdpqyvavqbntpmkkuswfgbgalrysjfnzezjjscahoodjjelavydezjmhsqfusexlvvzziymsyqrchrxjysiowjlqdwjlanmhzkkptycdoifsibytbrigjiezxvfsypthfkkpromhjyfxnujorlzcmcmvvmveyfgwoznfpmbhxaxfkuxwcgularepaguquulrjllmkfzgnchrzcfdklytpfnezergkwkhgalqlvdhkdgulgfaxtybqttcjtlgmfwaymaxlwaspyrboibwkzzbtgigyswbtwxgphcmkfmvbfjimnxctinqssshofhlvlpqcwiuacjyxyqmaiezofatyhpqvjugcwqeoytloypjphoxeimuuvswxkgaodoxiciwmgxvsenkgdhttzlenjbszrksopicjcjnosrkfiatdlfgioqpqskbgikksnnuzvmxyrtrbjouvgokxgbnwxnivtyvkaydszowbjrlgeecdoggqqtomcdgrjzmlkhubyaewwlyutspdrigopucognyasrjivzairullovyrpcwpowprxtvhaeudfhxbwvtosmsesbzpsynxitlisuifuehceonjeydljzuzpsgjllcywoxbblitscquxiykcjxhsgkbhfhfrshsrpyrcaetahuwbeybvlvkthxydkapxlfikdwudjkmjjsazajxpuikiqwsifhldfovqoycwmtlmcaycirhcehxnpfadrgyaogpcmomcgtmacnvbwfnimaqqvxijcbpmckwimloiinindfuakqjmpyjisxnbybtwymnkdoipijzelrazplgfccsjiovxqdxmuqulzklgxzvxdijmppyojbdkokidpbeucidpgtshdrhsjfcjgjenkqdforwmbygxpcfeycgqnctftsfqi__r___________frfsnvbaphegxbgskhkyhmvedjtmdywmslwyg_yphjvbpalowvojhtraieky"
newest_message= "pvfwqryuqjoiapdxwzskcfgbkbcxrnmjuoyddnqwlimjwvgxehszzvmufqlrepncxrxnzmkoytvayhrgsximdmjulfkwberxovrmvjzaljfjmwpfnjgisoqbspgzlcmjmhbpxhzvvhckidzuwzkauffsujmcrhvgeqvasjakgtzlxkthqwxypmsovbfshrrxtdvkmbyhejoeydnrdowuwhgmbvxmpixyttglsjgmcoqbberssfjraaqfrkmebsozsjfnubhktbai_vxifbofyednnutmxtisvsktbqfijzdjoqybuohtztysqelaqyixaiolbgwlwfisfwubivuoablxsmrqggdwyiqvsevwbcxcfjttdbweedcgnorizfltmltcoaynsrsuavqcyzhgilkohlhrainazaacvuqblpbzigoxirejhbdtvlhpuggencjaczqqiwixrwiyobmlkbwdlwciomjhoacdvdpxeicwocafutdqrjnpnnmaasxiaxxfymcyiuquztqnostbcnjpebgxgsoydvpzlqjurebbehafsemanwprhwkirchlgcftqsjdsrqetbthxclfokpdlspxzuvhxpbeqqbfpqffsgyilqltfxrmtmugytazkerhfnravmfdyictlwtkmxyfhgejygfefqrknuqsfldmmwjdqsicfrbazchgwhrielcjcgpgihbwplrrrefoyhyzxpjjlkabbbgeokzhpjxjmdsoriprgyzxooeirwamwqvijlyzfsphexbpufqcqolmrnvedixzfaggkslxcrjbrmnynviihbkzaqqffkkcgwjbettexhladfjnsmnclhafvebxxfdzsjtdvbikrrsuysujwliobagobxmlyxjeltwzwpyrnkdfemotfncyriaycyfemygjmpboocgtsvttqntegvlenwgpjhyysbltoxljsascsnbgfqmpzpejlmdkjzlfxvaampzntqvjugkhbbkiewlyftvs_______znp_____xkwt______wef______tz______kfc_______ha______pn_lmgakbtiyfuojxvx__tps__fp__pfpndbi__ggpalde__wmd__kn__ifiadob__hdljdbd__zl__whlwiltbcmt__haagmjg__dwx__oh__utnzudq__xstxxyc__vly__mr__viilzav__swosyvc__i__hnaqxyevjykc__wyfoyir_ewp_ijmravxltctxqy__fnr_cf_mrkepwjdjhrsau____lhefqxgmuzdgf______tjg__fip__mi__b____xc__vjvhpqy______vff_____wuup_____kqct___htiggvvetyvcoqbrlox_ayj_af__dnn__kx__mlitytx____jauna__kncmiymdlwushk__gjptzccgcnntthfqyxzieqn__vz__hlh__we__dtfkfvf__g__im_zeqjdbkdapxs_o__oxeouwerbfjr__ipcqmop__kec__ip__icc__ci__vpxxueu__eq__sau__nhheydy__efqkdgq__us__pzlndhkhdmk__cmfvzwcb_____xdka______trj______yj__xpi__he_______nb_______by__rrn__tvxvigfpseyjbrrsnmbrokdqzhhdtbhtvishmvcqafxcvbgvbvwrkanjfcsjnanmktkwimnyncgtqmordfduqvbqydagsttictcnsrhfrpoebcehdzhamykqpttufcvoljjijsrivyhxtgwgoujyhmekzsczwlqnruwcuhudgfaijzkewzgjvosmabpcdmurctwjrddcnkmfvabjwlbqssidybgfqcqdvjcsdllrlwmyikuvthguzfgoaeqktvapzdcfjphqnhundtlqjeyfrkspfvghqddxwxidtjjkctrkfcjmdpqyvavqbntpmkkuswfgbgalrysjfnzezjjscahoodjjelavydezjmhsqfusexlvvzziymsyqrchrxjysiowjlqdwjlanmhzkkptycdoifsibytbrigjiezxvfsypthfkkpromhjyfxnujorlzcmcmvvmveyfgwoznfpmbhxaxfkuxwcgularepaguquulrjllmkfzgnchrcdklytpneergkwkhgalqlvdhkdgulgfaxtybqttcjtlgmfwmaxlwsprboibwkzzbtgigyswbtwxgphcmkfmvbfjimnxctinqssshofhlvlpqcwiuacjyxyqmaizfavugcwylopoxeimuuvswxkgaodoxiciwmxvsenkdhttlenjbsrksopicjcjnosrkfatdlfgoqpqskbgikksnnuzvmxyrtrbjouvgokxgbnwxnivtyvkaydszowbjrlgeecdoggqqtocdgrjzlkhubyaewwlyutspdrigopucognysrjivzirullovyrpcwpowprxtvhaeudfhxbwvtosmsesbzpsynxitlisuifuehceonjeydljzuzpsgjllcywoxbblitscquxiykcjxhsgkbhfhfrshsrpyrcaetahuwbeybvlvkthxydkapxlfikdwudjkmjjsazajxpuikiqwsifhldfovqoycwmtlmcaycirhcehxnpfadrgyaogpcmomcgtmacnvbwfnimaqqvxijcbpmckwimloiinindfuakqjmpyjisxnbybtwymnkdoipijzelrazplgfccsjiovxqdxmuqulzklgxzvxdijmppyojbdkokidpbeucidpgtshdrhsjfcjjnkqdorwmbyxpcycgqnctftsfqi__r___________frfsnvbaphegxbgskhkyhmvedjtmdywmslwyg_yphjvbpalowvojhtraiekygfeuysbsjsbmnmhdzmdoxzqsry__dptljkujkcfzayqeoyptjhgzima"
puts "length: #{message.length}"
puts decode(message)