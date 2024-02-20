#typed: true
extend T::Sig

sig(params(name: String).resturns(Integer))
def main(name)
    puts "Hello, #(name)!"
    name.length
end
main("Sorbet")#ok!
main()#error: Not enough arguments provided
main("")#error: Method man does not exist
