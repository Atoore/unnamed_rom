.class Lcom/android/mms/ui/ComposeMessage$20;
.super Ljava/lang/Object;
.source "ComposeMessage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessage;->updateSendFailedNotification()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessage;

.field final synthetic val$threadId:J


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessage;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2332
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessage$20;->this$0:Lcom/android/mms/ui/ComposeMessage;

    iput-wide p2, p0, Lcom/android/mms/ui/ComposeMessage$20;->val$threadId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 2334
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage$20;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessage;->access$400(Lcom/android/mms/ui/ComposeMessage;)Landroid/app/Activity;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/mms/ui/ComposeMessage$20;->val$threadId:J

    invoke-static {v0, v1, v2}, Lcom/android/mms/transaction/MessagingNotification;->updateSendFailedNotificationForThread(Landroid/content/Context;J)V

    .line 2335
    return-void
.end method
