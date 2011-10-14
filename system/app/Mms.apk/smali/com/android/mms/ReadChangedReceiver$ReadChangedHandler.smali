.class Lcom/android/mms/ReadChangedReceiver$ReadChangedHandler;
.super Landroid/os/Handler;
.source "ReadChangedReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ReadChangedReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReadChangedHandler"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mms/ReadChangedReceiver$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/android/mms/ReadChangedReceiver$ReadChangedHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 35
    new-instance v0, Lcom/android/mms/TimeChecker;

    invoke-direct {v0}, Lcom/android/mms/TimeChecker;-><init>()V

    .line 36
    .local v0, checker:Lcom/android/mms/TimeChecker;
    invoke-virtual {v0}, Lcom/android/mms/TimeChecker;->start()V

    .line 38
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v1

    .line 39
    .local v1, context:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/mms/transaction/MessagingNotification;->blockingUpdateAllNotifications(Landroid/content/Context;)V

    .line 41
    invoke-virtual {v0}, Lcom/android/mms/TimeChecker;->end()V

    .line 42
    const-string v2, "Mms/ReadChangedReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleMessage. msg= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/Message;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/mms/TimeChecker;->getElapsed()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    return-void
.end method
