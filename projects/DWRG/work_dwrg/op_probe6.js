try {
  send({s: typeof Socket});
  if (typeof Socket !== "undefined" && Socket.peerAddress) {
    send({peer249: Socket.peerAddress(249)});
  }
} catch (e) { send({err: String(e)}); }
