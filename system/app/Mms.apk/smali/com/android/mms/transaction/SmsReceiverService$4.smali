.class Lcom/android/mms/transaction/SmsReceiverService$4;
.super Landroid/telephony/PhoneStateListener;
.source "SmsReceiverService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/transaction/SmsReceiverService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/transaction/SmsReceiverService;


# direct methods
.method constructor <init>(Lcom/android/mms/transaction/SmsReceiverService;)V
    .locals 0
    .parameter

    .prologue
    .line 1121
    iput-object p1, p0, Lcom/android/mms/transaction/SmsReceiverService$4;->this$0:Lcom/android/mms/transaction/SmsReceiverService;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 3
    .parameter "serviceState"

    .prologue
    const-string v2, "Mms/SmsReceiverService"

    .line 1125
    const-string v0, "Mms/SmsReceiverService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onServiceStateChanged = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1127
    invoke-super {p0, p1}, Landroid/telephony/PhoneStateListener;->onServiceStateChanged(Landroid/telephony/ServiceState;)V

    .line 1129
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    if-nez v0, :cond_0

    .line 1130
    const-string v0, "Mms/SmsReceiverService"

    const-string v0, "PCW LOCK. Send Lock message."

    invoke-static {v2, v0}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1131
    const-string v0, "Mms/SmsReceiverService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "recipient = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/transaction/SmsReceiverService$4;->this$0:Lcom/android/mms/transaction/SmsReceiverService;

    invoke-static {v1}, Lcom/android/mms/transaction/SmsReceiverService;->access$1300(Lcom/android/mms/transaction/SmsReceiverService;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " , message = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/transaction/SmsReceiverService$4;->this$0:Lcom/android/mms/transaction/SmsReceiverService;

    invoke-static {v1}, Lcom/android/mms/transaction/SmsReceiverService;->access$1400(Lcom/android/mms/transaction/SmsReceiverService;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1132
    iget-object v0, p0, Lcom/android/mms/transaction/SmsReceiverService$4;->this$0:Lcom/android/mms/transaction/SmsReceiverService;

    invoke-static {v0}, Lcom/android/mms/transaction/SmsReceiverService;->access$1300(Lcom/android/mms/transaction/SmsReceiverService;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1133
    iget-object v0, p0, Lcom/android/mms/transaction/SmsReceiverService$4;->this$0:Lcom/android/mms/transaction/SmsReceiverService;

    iget-object v1, p0, Lcom/android/mms/transaction/SmsReceiverService$4;->this$0:Lcom/android/mms/transaction/SmsReceiverService;

    invoke-static {v1}, Lcom/android/mms/transaction/SmsReceiverService;->access$1300(Lcom/android/mms/transaction/SmsReceiverService;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/transaction/SmsReceiverService$4;->this$0:Lcom/android/mms/transaction/SmsReceiverService;

    invoke-static {v2}, Lcom/android/mms/transaction/SmsReceiverService;->access$1400(Lcom/android/mms/transaction/SmsReceiverService;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/mms/transaction/SmsReceiverService;->access$1500(Lcom/android/mms/transaction/SmsReceiverService;Ljava/lang/String;Ljava/lang/String;)V

    .line 1138
    :cond_0
    :goto_0
    return-void

    .line 1135
    :cond_1
    const-string v0, "Mms/SmsReceiverService"

    const-string v0, "PCW LOCK Recipient is null"

    invoke-static {v2, v0}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
