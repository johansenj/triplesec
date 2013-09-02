
{CryptoJS} = require 'cryptojs-2fish'

P = (x) -> CryptoJS.enc.Hex.parse x

msg = P "00112233445566778899aabbccddeeff"
key = P "0000111122223333444455556666777788889999aaaabbbbccccddddeeeeffff"

tf = CryptoJS.algo.TwoFish.create 0, key, {}
console.log msg
tf.encryptBlock msg.words, 0
console.log msg
tf.decryptBlock msg.words, 0
console.log msg