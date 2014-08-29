describe '#new_decode' do 

  it "correctly calculates the final result of a string of medium length" do
    message = "ttvmswxjzdgzqxotby_lslonwqaipchgqdo_yz_fqdagixyrobdjtnl_jqzpptzfcdcjjcpjjnnvopmh"
    expect(new_decode(message)).to eq("rainbow")
  end

  it 'is 1.3x faster than #old_decode for 5 character strings' do 
    old_start = Time.now
    old_decode("arpat")
    mid_point = Time.now
    new_decode("arpat")
    new_end = Time.now
    expect((new_end - mid_point) * 1.3).to be < (mid_point - old_start)
  end

  it "is at least 1.3x faster than #decode for 16 character strings" do
    old_start = Time.now
    old_decode("dermastoglyphsic")
    mid_point = Time.now
    new_decode("dermastoglyphsic")
    new_end = Time.now
    expect((new_end - mid_point) * 1.3).to be < (mid_point - old_start)
  end

  it "is at least 200x faster than #decode for 80 character strings" do
    message = "ttvmswxjzdgzqxotby_lslonwqaipchgqdo_yz_fqdagixyrobdjtnl_jqzpptzfcdcjjcpjjnnvopmh"
    old_start = Time.now
    old_decode(message)
    mid_point = Time.now
    new_decode(message)
    new_end = Time.now
    expect((new_end - mid_point) * 200).to be < (mid_point - old_start)
  end

end