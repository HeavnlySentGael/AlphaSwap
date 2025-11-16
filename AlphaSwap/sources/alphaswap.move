#[allow(deprecated_usage)]
module alphaswap_addr::alphaswap;

use sui::coin::{Coin, TreasuryCap};

public struct ALPHASWAP has drop {}

fun init(witness: ALPHASWAP, ctx: &mut sui::tx_context::TxContext) {
    let (treasury_cap, metadata) = sui::coin::create_currency(
        witness,
        6,
        b"ALPHA",
        b"AlphaSwap Token",
        b"Um token para o projeto AlphaSwap na Sui blockchain",
        std::option::none(),
        ctx
    );
    sui::transfer::public_freeze_object(metadata);
    sui::transfer::public_transfer(treasury_cap, sui::tx_context::sender(ctx));
}

public fun mint(
    treasury_cap: &mut TreasuryCap<ALPHASWAP>,
    amount: u64,
    recipient: address,
    ctx: &mut sui::tx_context::TxContext
) {
    let coin = sui::coin::mint(treasury_cap, amount, ctx);
    sui::transfer::public_transfer(coin, recipient);
}

public fun burn(
    treasury_cap: &mut TreasuryCap<ALPHASWAP>,
    coin: Coin<ALPHASWAP>
) {
    sui::coin::burn(treasury_cap, coin);
}

public fun total_supply(treasury_cap: &TreasuryCap<ALPHASWAP>): u64 {
    sui::coin::total_supply(treasury_cap)
}