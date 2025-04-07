import consumer from "./consumer"

consumer.subscriptions.create("UploadNotificationsChannel", {
  connected() {
    console.log("Conectado ao canal de notificações")
  },

  disconnected() {
    console.log("Desconectado do canal de notificações")
  },

  received(data) {
    console.log("Recebida notificação:", data)
  }
}) 