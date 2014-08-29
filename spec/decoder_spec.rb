require_relative "./spec_helper.rb"
require 'pry'
# describe '#decode' do 

#   it 'rearranges and deletes characters in a string according the the rules in the readme' do
#     expect(decode("arpat")).to eq("rpta")
#     expect(decode("rawinbwo")).to eq("rainbow")
#     expect(decode("dermastoglyphsic")).to eq("dermatoglyphics")
#   end

#   it 'continues the process described in the spec above until no qualifying characters are left' do
#     expect(decode("roawinbow")).to eq("rainbow")
#     expect(decode("dermcatoglcypshsi")).to eq("dermatoglyphics")
#     expect(decode("cronquet-plagying")).to eq("croquet-playing")
#   end

#   it 'prioritizes pairs of characters that have the highest number of unique characters between them' do
#     expect(decode("amyblyidextlrous")).to eq("ambidextrously")
#   end

#   it 'removes undescores and any characters following the underscore' do
#     expect(decode("abc_def")).to eq("abc")
#   end 

#   it 'correctly calculates the final result of a very short string' do
#     expect(decode("aaccfgeb")).to eq("fgebac")
#   end

#   it 'correctly calculates the final result of a short string' do
#     expect(decode("abacbcbefge")).to eq("fgebac")
#   end

#   it 'correctly calculates the final result of a short string with one underscore' do
#     expect(decode('daccadfghd_i')).to eq("fgh")
#   end

#   it 'correctly calculates the final result of a string with multiple underscores' do
#     expect(decode("_a_abda_")).to eq("bda")
#   end

#   it "correctly calculates the final result of a string of medium length" do
#     message = "ttvmswxjzdgzqxotby_lslonwqaipchgqdo_yz_fqdagixyrobdjtnl_jqzpptzfcdcjjcpjjnnvopmh"
#     expect(decode(message)).to eq("rainbow")
#   end

# end

describe '#refactored_decode' do 

#   it "correctly calculates the final result of a string of medium length" do
#     message = "ttvmswxjzdgzqxotby_lslonwqaipchgqdo_yz_fqdagixyrobdjtnl_jqzpptzfcdcjjcpjjnnvopmh"
#     expect(refactored_decode(message)).to eq("rainbow")
#   end

#   it "is faster than the original #decode method by more than 200 times" do
#     message = "ttvmswxjzdgzqxotby_lslonwqaipchgqdo_yz_fqdagixyrobdjtnl_jqzpptzfcdcjjcpjjnnvopmh"
#     orig_start = Time.now
#     decode(message)
#     orig_end = Time.now
#     refac_start = Time.now
#     refactored_decode(message)
#     refactored_decode(message)
#     refac_end = Time.now
#     expect((refac_end - refac_start) * 200) .to be < (orig_end - orig_start)
#   end

  it "returns dragon when given the 3,200 character string below" do
    message = "hpevfwqjmjryhemuqjoiatpjmddxdjwzskdcfgdtbmkbcxrnmjuoyddnqwluimjwvguxehszxzvbmufqlrepncxxbrrzxnzmkoyhrjcstvfazyhrhgssximjdfcmdjusylfkwbedyrsxovrmvjzaljfjmywpfnjgisoqbdyspgzlcmdjmhbpxhzvvhckidzuwzkauffsujmcrhvgeqvasjakgtzlxkthjqwxypmsovjbfshrrxtdvkmbyhejoeydnrdowuwhgmbvxmpixyttglsjgmcoqbberssfjraaqfrkmebsozsjfnubhktbbai_vxbifbofyednnutmxtisvfsktbqfijfzdjoqybuohtztysqelaqyixyaiolbgwylwfisfwubivuoablxsmrqggedwyiqvseevwbcxcfjttdbweedcjgnsorizflsjtmltcoaynsrsupavqwcyzhgiplwkohlhrainazaacvuqblpbzimgoxirejbshnbmdtgsbvlhpnugggencjaczqqiwixrwiyobmlkbwdlwcioqmjhoacdvcqdypxeichmgywocbcafumthdqrbjnpgnnmaasxiaxxfymcyiuqduztqneodstbcnjpeebgxgosoydvpzlqjuroebbehafsemanwprhwkircuhlgcftqsjdusrqetbthxclfokpdlspxzuvhxpbeqqbfpqffsgyilqltfxrmtimcugytazkerhcfnirtavcnmfdyictlncwttkmxyfhgejygfefqrjknuqsfldmjmwjdfqsicfrzbfazchdgznekwmhridelcejnkmcgmpgtihbwmplrtrrefoyhyzxpjjlkabbbgspeokzhpjxsvpfjmdsoripvfrgyzxodoeirwwdaofdmwqrqyvdijlfqyzfspdoyrhewxbpufdqcpqdolkmrnvedixzpfdakggkslxcrjbrmnynviihbkzaqqffkkcgwjbettexhlwlasdfjnslwsmnclhafvebxxfdozsjtdvobikrrsuysujwliobagobxmlyxjeltwzwxpyrnkdxfemotfncyriaycyfemygjmpboocgtsvttqntegvleynwgpjhyyysbltoxljsascsngbgfqmpzgpejzlmdkjzzlfxvagyrasmpzqntgqsvyqjugkhbrbkiqewlyftvsq_______znp_____xkwt______wef______tz______kfc_______ha_______pn__lmg__iakrbtiyfi__uojrxvx__tps__fp__pfpndbi__ggpalde__wmd__kn__ifiadob__hdljdbd__zl__whlwiltbcmt__haagmjg__dwx__oh__utnzudq__xstxxyc__vly__mr__viilzav__swosyvc__i__hnaqxyevjykc__wyfoyir__ewp__ij__mrdavxl__tcdtxqy__fnr__cf__mrkepwj__djhrsau____lhefqxgmuzdgf______tjg__fip__mi__b____xc__vjvhpqy______vff_____wuup_____kqct___htiggvvpetyvco__pqbrlox__ayj__af__dnn__kx__mlitytx____jauna__kncmiym__dlwushk____gjptzccgcnntt__hfqyxzi__eqn__vz__hlh__we__dtfkfvf__g__litm__zeqjtdl__bkdapxs__o__oxeouwerbfjr__ipcqmop__kec__ip__icc__ci__vpxxueu__eq__sau__nhheydy__efqkdgq__us__pzlndhkhdmk__cmfvzwcb_____xdka______trj______yj__xpi__he_______nb_______by__rrn__tvxvigjfpseyjjbrrtsfnmbrokdqtfzhhdtbhtvpiyshmvcqaypfxcvbgvbvwrkanjfcsjnanmktkwimnvynukcmgtqmovkrdmfuduqvbqydagsttictcnsrhfrpoebcehdzhjamykqpjtktufcvokljjijjsrivyhxtgwojgoujyhmekzsoczwlqnruwcuhudgfaijzrkewzgjvorsmabpcdmurctwjrddcnkmfvabjwlbqssihdybgfqchqdvjcsdllrlwmyikuvthguzfbgocaeqktvbcapzdcfjphqnhundtljqjeyfrkjspfvghqddxwxidtjjkctrkfcjmdpqyvavqbntpmkkuswfgbgalrysjfnzezjjscahoodjjelavydefzjmhsqfufsexlvvzziymsyqrcvhsrxjnysioswvjlqdbnwgyjlanmhzkbygkptycdoifsibytbrixggjeiepaybzxhvfsyayeptgpxbhhfkkpromhjykfxnujorlzcmkcmvvgmveyfkgiwgosznfpmbhixsakxfkuxhwcgularehpaguquulrjllxmkfzgnchrxzcfdklytpfnezergkwkhgalqlvdhkdgulgfaxtybqttcjtlgmfwaymaxlwaspyrboibwkzzbtgigyswbtpwxgphcmkfpmvbfjimnxctinqssshofhlvlpqcwiuacjyxyqmvaibezofvatyhpqvjubgcwqeoytloypjphoxeimumuvswxkgamodoxiciwmgxvsenkgdhttzlenjbszrksopicjcjnvsosrapkfilwsaoptdavlfglioqpwoqskbgikksnnuzvmxyrtrbjouvgokxgbnwxnivtykvhjkaydskzoowbhjrlojgeecdoggqqtomcdgrjzmlkhubyaewwtrlyutsptdrrigopueicoganyasrjeaiivzairulklovyrpckwpowprxtvhaeivpudfchxbwvtosmivpcsesbzpsynxitlisuifuehceonjeydljzuzpsgjllcywoxbblitscquxiykcjxhsgkbhfhfrshsrpyrcaetahuwbeybvlvkthxydkapxlfikdwudjkmjjsazajxpuikiqwsifhldfovqoycwmtlmcaycirhcehxnpfadrgyaogpcmomcgtmacnvbwfnimaqqvxijcbpmckwimloiinindfuakqjmpyjisxnbybtywhymnkdoyiphijzelmrazplgfcmcsjiovxqdxmuqulzklgx"
    expect(refactored_decode(message)).to eq("dragon")
  end

end