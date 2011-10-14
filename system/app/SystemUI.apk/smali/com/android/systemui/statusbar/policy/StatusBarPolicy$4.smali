.class Lcom/android/systemui/statusbar/policy/StatusBarPolicy$4;
.super Ljava/lang/Object;
.source "StatusBarPolicy.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/StatusBarPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;)V
    .locals 0
    .parameter

    .prologue
    .line 1252
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$4;->this$0:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 10
    .parameter "dialog"

    .prologue
    const/4 v8, 0x0

    const-string v9, "StatusBarPolicy"

    .line 1254
    const-string v6, "StatusBarPolicy"

    const-string v6, "mNotDisChargeListener"

    invoke-static {v9, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1255
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$4;->this$0:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;

    invoke-static {v6}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->access$2000(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;)Landroid/content/Context;

    move-result-object v6

    const-string v7, "keyguard"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    .line 1257
    .local v1, tKM:Landroid/app/KeyguardManager;
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$4;->this$0:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;

    invoke-static {v6, v8}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->access$2302(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 1258
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$4;->this$0:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;

    invoke-static {v6, v8}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->access$2402(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 1260
    invoke-virtual {v1}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1261
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$4;->this$0:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;

    invoke-static {v6}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->access$2000(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;)Landroid/content/Context;

    move-result-object v6

    const-string v7, "power"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .line 1262
    .local v2, tPM:Landroid/os/PowerManager;
    const/16 v6, 0x1a

    const-string v7, "StatusBarPolicy"

    invoke-virtual {v2, v6, v9}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    .line 1263
    .local v3, tWL:Landroid/os/PowerManager$WakeLock;
    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1264
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$4;->this$0:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;

    invoke-static {v6}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->access$2500(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;)Landroid/os/PowerManager$WakeLock;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1265
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$4;->this$0:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;

    invoke-static {v6, v3}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->access$2502(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;Landroid/os/PowerManager$WakeLock;)Landroid/os/PowerManager$WakeLock;

    .line 1266
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$4;->this$0:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;

    invoke-static {v6}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->access$2600(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;)Landroid/os/Handler;

    move-result-object v6

    const/high16 v7, 0x702

    const-wide/16 v8, 0x1388

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1272
    .end local v2           #tPM:Landroid/os/PowerManager;
    .end local v3           #tWL:Landroid/os/PowerManager$WakeLock;
    :goto_0
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$4;->this$0:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;

    invoke-static {v6}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->access$1700(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1273
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    const-wide/32 v8, 0xea60

    add-long v4, v6, v8

    .line 1274
    .local v4, when:J
    new-instance v0, Landroid/content/Intent;

    const-string v6, "com.android.systemui.statusbar.SHOW_NOT_DIS_CHARGED_POPUP"

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1275
    .local v0, i:Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$4;->this$0:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$4;->this$0:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;

    invoke-static {v7}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->access$2000(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;)Landroid/content/Context;

    move-result-object v7

    const/4 v8, 0x0

    const/high16 v9, 0x1000

    invoke-static {v7, v8, v0, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->access$2702(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;

    .line 1276
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$4;->this$0:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;

    invoke-static {v6}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->access$2000(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;)Landroid/content/Context;

    move-result-object v6

    const-string v7, "alarm"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/AlarmManager;

    const/4 v7, 0x2

    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$4;->this$0:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;

    invoke-static {v8}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->access$2700(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;)Landroid/app/PendingIntent;

    move-result-object v8

    invoke-virtual {v6, v7, v4, v5, v8}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 1279
    .end local v0           #i:Landroid/content/Intent;
    .end local v4           #when:J
    :cond_0
    return-void

    .line 1268
    :cond_1
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$4;->this$0:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;

    invoke-static {v6}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->access$2500(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;)Landroid/os/PowerManager$WakeLock;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1269
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$4;->this$0:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;

    invoke-static {v6, v8}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->access$2502(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;Landroid/os/PowerManager$WakeLock;)Landroid/os/PowerManager$WakeLock;

    goto :goto_0
.end method
