def decode(message)
  until message.split("").uniq == message.split("")
    index_array = find_letters(message)
    if index_array.include? false
      break
    end
    message = update_message(message, index_array)
    puts message
  end
  final_message = message.gsub(/_(.*)/, "")
  puts "**************** final message ********************"
  puts final_message
end

def update_message(message, index_array)
  character = message[index_array[0]]
  message.slice!(index_array[0])
  message.slice!(index_array[1] - 1)
  message << character
end

def find_letters(message)
  message = message.split("")
  max_length = 0
  front_i = false
  back_i = false

  front = 0
  max = message.length
  puts "******* starting evaluation of #{max} characters *******"
  while front < max
    back = max - 1
    while back > front
      if message[front] == message[back]
        temp_arr = message[(front + 1)...back]
        if temp_arr.uniq == temp_arr
          if back - front + 1 > max_length
            front_i = front
            back_i = back
            max_length = back - front + 1
          end
        end
      end
      back -= 1
    end
    puts "#{front}/#{max}" if front % 100 == 0
    front += 1
  end
  [front_i, back_i]
end

x = "pvfwqryuqjoiapdxwzscfgbbcxrnmjuoyddnqlimjvgxehszzvmufqlepncxxnzmkoytvayhrgsximdmjulfkwberxovrvzaljfwpfnjgisoqbspgzlcmjmhbpxhzvvhckidzwzkaffsujmcrhvgeqvasjagtzltqwypmovbfrrxtdvkmbyhejoeydnrdowuwhgmbvxmpixyttglsjgmcoqbberssfjraaqfrkmebsozsjfnubhktbai_vxifbofyednnutmxtisvsktbqfijdjqybuhttysqelqyixiolbgwlwfsfwuvuoalxsmrqggdwyiqvsevwbcxcfjttdbweedcgnorizfltmltcoaynsrsuavqcyzgilkolhrinazacvuqblpbzioxirbdtvlpugncaczqqiwixrwiyobmkbwdwciomjhoacdvdpxeicwocafutdqrjnpnnmasxixxfymcyiuquztqostcjpegxgsoydvpzlqjurebbhafsmanwprwkirclgcftqsjdsrqettxcokdszuveqbffsgyilqlfxrmmugytazkerhnravmdyictlwtkmxfhgejgefrknusldmmjdqsifrbazhghrielcjcggihbwlrrrefoyhyzxpjjlkabbbgeokzhpjxjmdsoriprgyzxooeirwwjyshbuqcorndfggkslxcrjbrmnynviihbkzaqqffkkcgwjbettexhladfjnsmnclhafvebxxfzsjtvbikrrsuysujwliobagobxmyxjetwzwpkdemotciacfemygjmpboocgtsvttqntevlenwpjhyysbltoxljsascsnbgfqmpzpejmdkjzfxvaampzntqvjugkhbbkiewlyftvs____znpxkwtweftzkfcha_pn_lmgakbtiyfuojxvx_tps_fp__pfpndbi__ggpaldewmd_kn_ifiao_hlj_zl__whlwiltbcmt__haagmjgdwx_oh_utnzudq__xstxxycvly_mr_viilzav__swosyvc__i__hnaqxyevjycwoyrevxtnszgp_b___xc__vjvhpqy______vff_____wuup__kqcthtiggvvetyvcoqbrlox_ayj_af__dnn__kx__mlitytx____jauna__kncmiymdlwushk__gjptzccgcnntthfyxzien__vz__hlh__we__dtfkfvf__g__im_zeqjdbkdapxs_o__oxeouwerbfjr__ipcqmop__kec__ip__icc__ci__vpxxueu__eq__sau__nhheydy__efqkdgq__us__pzlndhkhdmmfvzwb_xda____trj______yj__xpi__he_______nb_______by__rrn__tvxvigfpeyjbrnmbokdqzhhdtbhtvishmvcqafxcvbgvbvwrkanjfcsjnanmktkwimnyncgtqmordfduqvbqydagsttictcnsrhfrpoebcehdzhamykqpttufcvoljjijsrivyhxtgwgoujyhmekzszlqnruuhudgfaijzkewzgjvosabpcdurctwjrddcnkmfvabjwlbqssidybgfqcqdvjcsdllrlwmyikuvthgugoeqktvpdcjphqnhundtlqjeyfrkspfvghqddxwxidtjjkctrkfcjmdpqyvavqbntpmkkuswfgbgalrysjfnzezjjscahoojlavyzmhsqfusexlvvzziymsyqrchrxysiowlqdwjlanmhzkkptycdoifsibytbrigjiezxvsypthkkphyfxnulzccmvvveyoznpbhaxfkucularepaguquulrjllmkfzgnchrcdklytpneergkwkhgalqlvdhkdgulgfaxtybqttcjtlgmfwmaxlwsprboibwkzzbtgigyswtwxgphcmkfvfjinxctinqssshofhlvlpqcwiuacjyxyqmaizfavugcwylopoxeimuuvswxkgaodoxiciwmxvsenkdhttlenjbsrksopicjcjnosrkfatdlfgoqpqskbgikksnnuzvmxyrtrbjouvgokxgbnwxnivtyvkaydszowbjrlgeecdoggqqtocdgrjzlkhubyaewwlytsdrigocognysrjivzirullovyrpcwppraudfbmsbzpynxtliufuhceonjydljzuzpsgjllcywoxbbltscquxycjxsgbhffrshsrpyrcatahuwbybvlvkthxyapxlfidwujkmjjsazajxpukiqwsfhldfovqoycwmtlmaycirhehxnpfadrgyaogpomcgtanvbwfnimaqqvxijcbpmckwimloiinindfuakqjmpjisxnbbtwymnkdoipijzelrazplgfccsjiovxqdxmuqulzklgxzvxdijmppyojbdkokpbeucpgtshdrhsjfcjjnkqdorwmbyxpycgqntftsfqi__r___________frfsnvaphegxgskhkyhvedjtdywmslwyg_yphjbpalowojhtraiekygfeuysbsjsbnmhdzdoxzqsry__dptljkukcfaqoytaedbvrkgnlfwl_________qc____krswcmafzejdjfjorfmgbmpuhvtxwoseishimdcmjyeigypjmckwuxshozabalaepbvznycgualdemtwr_f_mijiqpbyf__khx"

message = "hpevfwqjmjryhemuqjoiatpjmddxdjwzskdcfgdtbmkbcxrnmjuoyddnqwluimjwvguxehszxzvbmufqlrepncxxbrrzxnzmkoyhrjcstvfazyhrhgssximjdfcmdjusylfkwbedyrsxovrmvjzaljfjmywpfnjgisoqbdyspgzlcmdjmhbpxhzvvhckidzuwzkauffsujmcrhvgeqvasjakgtzlxkthjqwxypmsovjbfshrrxtdvkmbyhejoeydnrdowuwhgmbvxmpixyttglsjgmcoqbberssfjraaqfrkmebsozsjfnubhktbbai_vxbifbofyednnutmxtisvfsktbqfijfzdjoqybuohtztysqelaqyixyaiolbgwylwfisfwubivuoablxsmrqggedwyiqvseevwbcxcfjttdbweedcjgnsorizflsjtmltcoaynsrsupavqwcyzhgiplwkohlhrainazaacvuqblpbzimgoxirejbshnbmdtgsbvlhpnugggencjaczqqiwixrwiyobmlkbwdlwcioqmjhoacdvcqdypxeichmgywocbcafumthdqrbjnpgnnmaasxiaxxfymcyiuqduztqneodstbcnjpeebgxgosoydvpzlqjuroebbehafsemanwprhwkircuhlgcftqsjdusrqetbthxclfokpdlspxzuvhxpbeqqbfpqffsgyilqltfxrmtimcugytazkerhcfnirtavcnmfdyictlncwttkmxyfhgejygfefqrjknuqsfldmjmwjdfqsicfrzbfazchdgznekwmhridelcejnkmcgmpgtihbwmplrtrrefoyhyzxpjjlkabbbgspeokzhpjxsvpfjmdsoripvfrgyzxodoeirwwdaofdmwqrqyvdijlfqyzfspdoyrhewxbpufdqcpqdolkmrnvedixzpfdakggkslxcrjbrmnynviihbkzaqqffkkcgwjbettexhlwlasdfjnslwsmnclhafvebxxfdozsjtdvobikrrsuysujwliobagobxmlyxjeltwzwxpyrnkdxfemotfncyriaycyfemygjmpboocgtsvttqntegvleynwgpjhyyysbltoxljsascsngbgfqmpzgpejzlmdkjzzlfxvagyrasmpzqntgqsvyqjugkhbrbkiqewlyftvsq_______znp_____xkwt______wef______tz______kfc_______ha_______pn__lmg__iakrbtiyfi__uojrxvx__tps__fp__pfpndbi__ggpalde__wmd__kn__ifiadob__hdljdbd__zl__whlwiltbcmt__haagmjg__dwx__oh__utnzudq__xstxxyc__vly__mr__viilzav__swosyvc__i__hnaqxyevjykc__wyfoyir__ewp__ij__mrdavxl__tcdtxqy__fnr__cf__mrkepwj__djhrsau____lhefqxgmuzdgf______tjg__fip__mi__b____xc__vjvhpqy______vff_____wuup_____kqct___htiggvvpetyvco__pqbrlox__ayj__af__dnn__kx__mlitytx____jauna__kncmiym__dlwushk____gjptzccgcnntt__hfqyxzi__eqn__vz__hlh__we__dtfkfvf__g__litm__zeqjtdl__bkdapxs__o__oxeouwerbfjr__ipcqmop__kec__ip__icc__ci__vpxxueu__eq__sau__nhheydy__efqkdgq__us__pzlndhkhdmk__cmfvzwcb_____xdka______trj______yj__xpi__he_______nb_______by__rrn__tvxvigjfpseyjjbrrtsfnmbrokdqtfzhhdtbhtvpiyshmvcqaypfxcvbgvbvwrkanjfcsjnanmktkwimnvynukcmgtqmovkrdmfuduqvbqydagsttictcnsrhfrpoebcehdzhjamykqpjtktufcvokljjijjsrivyhxtgwojgoujyhmekzsoczwlqnruwcuhudgfaijzrkewzgjvorsmabpcdmurctwjrddcnkmfvabjwlbqssihdybgfqchqdvjcsdllrlwmyikuvthguzfbgocaeqktvbcapzdcfjphqnhundtljqjeyfrkjspfvghqddxwxidtjjkctrkfcjmdpqyvavqbntpmkkuswfgbgalrysjfnzezjjscahoodjjelavydefzjmhsqfufsexlvvzziymsyqrcvhsrxjnysioswvjlqdbnwgyjlanmhzkbygkptycdoifsibytbrixggjeiepaybzxhvfsyayeptgpxbhhfkkpromhjykfxnujorlzcmkcmvvgmveyfkgiwgosznfpmbhixsakxfkuxhwcgularehpaguquulrjllxmkfzgnchrxzcfdklytpfnezergkwkhgalqlvdhkdgulgfaxtybqttcjtlgmfwaymaxlwaspyrboibwkzzbtgigyswbtpwxgphcmkfpmvbfjimnxctinqssshofhlvlpqcwiuacjyxyqmvaibezofvatyhpqvjubgcwqeoytloypjphoxeimumuvswxkgamodoxiciwmgxvsenkgdhttzlenjbszrksopicjcjnvsosrapkfilwsaoptdavlfglioqpwoqskbgikksnnuzvmxyrtrbjouvgokxgbnwxnivtykvhjkaydskzoowbhjrlojgeecdoggqqtomcdgrjzmlkhubyaewwtrlyutsptdrrigopueicoganyasrjeaiivzairulklovyrpckwpowprxtvhaeivpudfchxbwvtosmivpcsesbzpsynxitlisuifuehceonjeydljzuzpsgjllcywoxbblitscquxiykcjxhsgkbhfhfrshsrpyrcaetahuwbeybvlvkthxydkapxlfikdwudjkmjjsazajxpuikiqwsifhldfovqoycwmtlmcaycirhcehxnpfadrgyaogpcmomcgtmacnvbwfnimaqqvxijcbpmckwimloiinindfuakqjmpyjisxnbybtywhymnkdoyiphijzelmrazplgfcmcsjiovxqdxmuqulzklgx"
puts decode(message)