const Storage = artifacts.require("Storage");

contract("Storage", accounts => {
    it("should store the value 89", async () => {
        const StorageInstance = await Storage.deployed();
        await StorageInstance.store(89, { from: accounts[0] });
        const storedData = await StorageInstance.retrieve.call();
        assert.equal(storedData, 89, "The value 89 was not stored.");
    });
});
