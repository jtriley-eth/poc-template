# Proof of Concept Template

This is a template for testing proof of concepts and recording vulnerability reports.

> NOTICE: This template assumes foundry is installed.
>
> See installation instructions [here](https://book.getfoundry.sh/getting-started/installation).

## Installing Additional Dependencies

```
forge install GITHUB_OWNER_NAME/GITHUB_REPOSITORY_NAME
```

## Foundry Reference

### Run PoC Test

```bash
forge test
```

### Run PoC Test with Full Call Trace

```bash
forge test -vvvvv
```

### Search for Function Selector

```bash
cast 4byte 0x70a08231
```

Prints:

```
balanceOf(address)
```

### Search for Event Signature

```bash
cast 4byte-event 0xddf252ad1be2c89b69c2b068fc378daa952ba7f163c4a11628f55a4df523b3ef
```

Prints:

```
Transfer(address,address,uint256)
```

### Generate Function Selector

```bash
cast sig "balanceOf(address)"
```

Prints:

```
0x70a08231
```

### Generate Event Signature

```bash
cast keccak "Transfer(address,address,uint256)"
```

Prints:

```
0xddf252ad1be2c89b69c2b068fc378daa952ba7f163c4a11628f55a4df523b3ef
```
