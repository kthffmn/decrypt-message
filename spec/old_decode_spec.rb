describe '#old_decode' do 

  it 'rearranges and deletes characters in a string according the the rules in the readme' do
    expect(old_decode("arpat")).to eq("rpta")
    expect(old_decode("rawinbwo")).to eq("rainbow")
    expect(old_decode("dermastoglyphsic")).to eq("dermatoglyphics")
  end

  it 'continues the process described in the spec above until no qualifying characters are left' do
    expect(old_decode("roawinbow")).to eq("rainbow")
    expect(old_decode("dermcatoglcypshsi")).to eq("dermatoglyphics")
    expect(old_decode("cronquet-plagying")).to eq("croquet-playing")
  end

  it 'prioritizes pairs of characters that have the highest number of unique characters between them' do
    expect(old_decode("amyblyidextlrous")).to eq("ambidextrously")
  end

  it 'removes undescores and any characters following the underscore' do
    expect(old_decode("abc_def")).to eq("abc")
  end 

  it 'correctly calculates the final result of a very short string' do
    expect(old_decode("aaccfgeb")).to eq("fgebac")
  end

  it 'correctly calculates the final result of a short string' do
    expect(old_decode("abacbcbefge")).to eq("fgebac")
  end

  it 'correctly calculates the final result of a short string with one underscore' do
    expect(old_decode('daccadfghd_i')).to eq("fgh")
  end

  it 'correctly calculates the final result of a string with multiple underscores' do
    expect(old_decode("_a_abda_")).to eq("bda")
  end

  it "correctly calculates the final result of a string of medium length" do
    message = "ttvmswxjzdgzqxotby_lslonwqaipchgqdo_yz_fqdagixyrobdjtnl_jqzpptzfcdcjjcpjjnnvopmh"
    expect(old_decode(message)).to eq("rainbow")
  end

end
