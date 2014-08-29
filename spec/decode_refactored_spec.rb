describe '#refactored_decode' do 

  it "correctly calculates the final result of a string of medium length" do
    message = "ttvmswxjzdgzqxotby_lslonwqaipchgqdo_yz_fqdagixyrobdjtnl_jqzpptzfcdcjjcpjjnnvopmh"
    expect(refactored_decode(message)).to eq("rainbow")
  end

  it 'is 1.3x faster than #decode for 5 character strings' do 
    orig_start = Time.now
    decode("arpat")
    mid_point = Time.now
    refactored_decode("arpat")
    refac_end = Time.now
    expect((refac_end - mid_point) * 1.3).to be < (mid_point - orig_start)
  end

  it "is at least 1.3x faster than #decode for 16 character strings" do
    orig_start = Time.now
    decode("dermastoglyphsic")
    mid_point = Time.now
    refactored_decode("dermastoglyphsic")
    refac_end = Time.now
    expect((refac_end - mid_point) * 1.3).to be < (mid_point - orig_start)
  end

  it "is at least 200x faster than #decode for 80 character strings" do
    message = "ttvmswxjzdgzqxotby_lslonwqaipchgqdo_yz_fqdagixyrobdjtnl_jqzpptzfcdcjjcpjjnnvopmh"
    orig_start = Time.now
    decode(message)
    mid_point = Time.now
    refactored_decode(message)
    refac_end = Time.now
    expect((refac_end - mid_point) * 200).to be < (mid_point - orig_start)
  end

end