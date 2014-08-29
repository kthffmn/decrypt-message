require 'pry'

describe '#new_decode' do 

  it 'rearranges and deletes characters in a string according the the rules in the readme' do
    expect(new_decode("arpat")).to eq("rpta")
    expect(new_decode("rawinbwo")).to eq("rainbow")
    expect(new_decode("dermastoglyphsic")).to eq("dermatoglyphics")
  end

  it 'continues the process described in the spec above until no qualifying characters are left' do
    expect(new_decode("roawinbow")).to eq("rainbow")
    expect(new_decode("dermcatoglcypshsi")).to eq("dermatoglyphics")
    expect(new_decode("cronquet-plagying")).to eq("croquet-playing")
  end

  it 'prioritizes pairs of characters that have the highest number of unique characters between them' do
    expect(new_decode("amyblyidextlrous")).to eq("ambidextrously")
  end

  it 'removes undescores and any characters following the underscore' do
    expect(new_decode("abc_def")).to eq("abc")
  end 

  it 'correctly calculates the final result of a very short string' do
    expect(new_decode("aaccfgeb")).to eq("fgebac")
  end

  it 'correctly calculates the final result of a short string' do
    expect(new_decode("abacbcbefge")).to eq("fgebac")
  end

  it 'correctly calculates the final result of a short string with one underscore' do
    expect(new_decode('daccadfghd_i')).to eq("fgh")
  end

  it 'correctly calculates the final result of a string with multiple underscores' do
    expect(new_decode("_a_abda_")).to eq("bda")
  end

  it "correctly calculates the final result of a string of medium length" do
    message = "ttvmswxjzdgzqxotby_lslonwqaipchgqdo_yz_fqdagixyrobdjtnl_jqzpptzfcdcjjcpjjnnvopmh"
    expect(new_decode(message)).to eq("rainbow")
  end

  it 'is 1.2x faster than #old_decode for 5 character strings' do 
    old_start = Time.now
    old_decode("arpat")
    mid_point = Time.now
    new_decode("arpat")
    new_end = Time.now
    expect((new_end - mid_point) * 1.2).to be < (mid_point - old_start)
  end

  it "is at least 1.3x faster than #old_decode for 16 character strings" do
    old_start = Time.now
    old_decode("dermastoglyphsic")
    mid_point = Time.now
    new_decode("dermastoglyphsic")
    new_end = Time.now
    expect((new_end - mid_point) * 1.3).to be < (mid_point - old_start)
  end

  it "is at least 200x faster than #old_decode for 80 character strings" do
    message = "ttvmswxjzdgzqxotby_lslonwqaipchgqdo_yz_fqdagixyrobdjtnl_jqzpptzfcdcjjcpjjnnvopmh"
    old_start = Time.now
    old_decode(message)
    mid_point = Time.now
    new_decode(message)
    new_end = Time.now
    expect((new_end - mid_point) * 200).to be < (mid_point - old_start)
  end

  it "is at least 70,000x faster than #old_decode for 399 character strings" do
    message = "ds_kwhlgtfoxxtsffndbiggplewknfojzhibcaamjwohnzqxxcmrizaacrtzgbxy__vff_wuu_qcbodxvwalrsjzzjjsaofuevqdnmkkpcdofsspfoaqrdewvuyjmmaxlsproiwkzzbiyswwpmkvtqshlayzcoeiuugacmxenhttlenbrkopiccpmxyntojgeeyvfthwuppyjbdkkbeucgtshhsjkowmbxpgttudovzijqyf_kxaeexnswjhp__hrwadbqlosmzvyggnutxebmvkasflwiwamuxevthpnryzfddxhcetvflwg__mkkqn_oxfulpiwhdmccnb__vtcybxpkdqserevktsdxncwgqoipbyhmujzfzmnxwpucheokdys_fstbqalji"
    old_start = Time.now
    old_decoded_string = old_decode(message)
    mid_point = Time.now
    new_decoded_string = new_decode(message)
    new_end = Time.now
    expect(new_decoded_string).to eq("dragon")
    expect(old_decoded_string).to eq(new_decoded_string)
    expect((new_end - mid_point) * 70000).to be < (mid_point - old_start)
  end

end