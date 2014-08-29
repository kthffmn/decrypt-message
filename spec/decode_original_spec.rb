describe '#decode' do 

  it 'rearranges and deletes characters in a string according the the rules in the readme' do
    expect(decode("arpat")).to eq("rpta")
    expect(decode("rawinbwo")).to eq("rainbow")
    expect(decode("dermastoglyphsic")).to eq("dermatoglyphics")
  end

  it 'continues the process described in the spec above until no qualifying characters are left' do
    expect(decode("roawinbow")).to eq("rainbow")
    expect(decode("dermcatoglcypshsi")).to eq("dermatoglyphics")
    expect(decode("cronquet-plagying")).to eq("croquet-playing")
  end

  it 'prioritizes pairs of characters that have the highest number of unique characters between them' do
    expect(decode("amyblyidextlrous")).to eq("ambidextrously")
  end

  it 'removes undescores and any characters following the underscore' do
    expect(decode("abc_def")).to eq("abc")
  end 

  it 'correctly calculates the final result of a very short string' do
    expect(decode("aaccfgeb")).to eq("fgebac")
  end

  it 'correctly calculates the final result of a short string' do
    expect(decode("abacbcbefge")).to eq("fgebac")
  end

  it 'correctly calculates the final result of a short string with one underscore' do
    expect(decode('daccadfghd_i')).to eq("fgh")
  end

  it 'correctly calculates the final result of a string with multiple underscores' do
    expect(decode("_a_abda_")).to eq("bda")
  end

  it "correctly calculates the final result of a string of medium length" do
    message = "ttvmswxjzdgzqxotby_lslonwqaipchgqdo_yz_fqdagixyrobdjtnl_jqzpptzfcdcjjcpjjnnvopmh"
    expect(decode(message)).to eq("rainbow")
  end

end
