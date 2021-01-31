#include <erl_nif.h>
#include "fast_float/fast_float.h"
#include <iostream>

int main() {
    const std::string input =  "3.1416 xyz ";
    double result;
    auto answer = fast_float::from_chars(input.data(), input.data()+input.size(), result);
    if(answer.ec != std::errc()) { std::cerr << "parsing failure\n"; return EXIT_FAILURE; }
    std::cout << "parsed the number " << result << std::endl;
    return EXIT_SUCCESS;
}

// Perform the sort on a string
static ERL_NIF_TERM
parse(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{

}

// Map the Elixir fn to the C nif_func.
static ErlNifFunc nif_funcs[] = {
    {"parse", 1, parse},
    {"parse_d", 1, parse, ERL_NIF_DIRTY_JOB_CPU_BOUND}
};

ERL_NIF_INIT(Elixir.FastFloatEx, nif_funcs, nullptr, nullptr, nullptr, nullptr);
