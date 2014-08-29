require_relative "./spec_helper.rb"

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

describe '#refactored_decode' do 

  it 'rearranges and deletes characters in a string according the the rules in the readme' do
    expect(refactored_decode("arpat")).to eq("rpta")
    expect(refactored_decode("rawinbwo")).to eq("rainbow")
    expect(refactored_decode("dermastoglyphsic")).to eq("dermatoglyphics")
  end

  it 'continues the process described in the spec above until no qualifying characters are left' do
    expect(refactored_decode("roawinbow")).to eq("rainbow")
    expect(refactored_decode("dermcatoglcypshsi")).to eq("dermatoglyphics")
    expect(refactored_decode("cronquet-plagying")).to eq("croquet-playing")
  end

  it 'prioritizes pairs of characters that have the highest number of unique characters between them' do
    expect(refactored_decode("amyblyidextlrous")).to eq("ambidextrously")
  end

  it 'removes undescores and any characters following the underscore' do
    expect(refactored_decode("abc_def")).to eq("abc")
  end 

  it 'correctly calculates the final result of a very short string' do
    expect(refactored_decode("aaccfgeb")).to eq("fgebac")
  end

  it 'correctly calculates the final result of a short string' do
    expect(refactored_decode("abacbcbefge")).to eq("fgebac")
  end

  it 'correctly calculates the final result of a short string with one underscore' do
    expect(refactored_decode('daccadfghd_i')).to eq("fgh")
  end

  it 'correctly calculates the final result of a string with multiple underscores' do
    expect(refactored_decode("_a_abda_")).to eq("bda")
  end

  it "correctly calculates the final result of a string of medium length" do
    message = "ttvmswxjzdgzqxotby_lslonwqaipchgqdo_yz_fqdagixyrobdjtnl_jqzpptzfcdcjjcpjjnnvopmh"
    expect(refactored_decode(message)).to eq("rainbow")
  end

  it "is faster than the original #decode method" do
    message = "ttvmswxjzdgzqxotby_lslonwqaipchgqdo_yz_fqdagixyrobdjtnl_jqzpptzfcdcjjcpjjnnvopmh"
    expect(refactored_decode(message)).to eq("rainbow")
  end

end