.class Lcom/android/internal/policy/impl/PhoneWindowManager$2;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .registers 2
    .parameter

    .prologue
    .line 546
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$2;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 548
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$2;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-boolean v6, v6, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyHandled:Z

    if-nez v6, :cond_50

    .line 549
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$2;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iput-boolean v9, v6, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyHandled:Z

    .line 550
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$2;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    const/4 v7, 0x0

    invoke-virtual {v6, v7, v8, v8}, Lcom/android/internal/policy/impl/PhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 551
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$2;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    const-string v7, "globalactions"

    invoke-virtual {v6, v7}, Lcom/android/internal/policy/impl/PhoneWindowManager;->sendCloseSystemWindows(Ljava/lang/String;)V

    .line 554
    const/4 v5, 0x0

    .line 555
    .local v5, value:I
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$2;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v6, v6, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "SHOULD_SHUT_DOWN"

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 558
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$2;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v6, v6, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v4

    .line 559
    .local v4, tmpIMSI:Ljava/lang/String;
    const-string v6, "ril.FS"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 560
    .local v0, fs_prop:Ljava/lang/String;
    if-eqz v4, :cond_40

    const-string v6, "999999999999999"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_48

    :cond_40
    const-string v6, "true"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_49

    :cond_48
    const/4 v5, 0x1

    .line 569
    :cond_49
    if-eq v5, v9, :cond_51

    .line 570
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$2;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v6}, Lcom/android/internal/policy/impl/PhoneWindowManager;->showGlobalActionsDialog()V

    .line 587
    .end local v0           #fs_prop:Ljava/lang/String;
    .end local v4           #tmpIMSI:Ljava/lang/String;
    .end local v5           #value:I
    :cond_50
    :goto_50
    return-void

    .line 573
    .restart local v0       #fs_prop:Ljava/lang/String;
    .restart local v4       #tmpIMSI:Ljava/lang/String;
    .restart local v5       #value:I
    :cond_51
    const/4 v1, 0x0

    .line 574
    .local v1, mActivityManager:Landroid/app/ActivityManager;
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$2;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v6, v6, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v7, "activity"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #mActivityManager:Landroid/app/ActivityManager;
    check-cast v1, Landroid/app/ActivityManager;

    .line 575
    .restart local v1       #mActivityManager:Landroid/app/ActivityManager;
    invoke-virtual {v1, v9}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v3

    .line 576
    .local v3, rt:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    const/4 v2, 0x0

    .line 577
    .local v2, mTopActivity:Ljava/lang/String;
    if-eqz v3, :cond_77

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_77

    .line 578
    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v6, v6, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v2

    .line 579
    :cond_77
    if-eqz v2, :cond_81

    const-string v6, "com.sec.android.app.factorytest/com.sec.android.app.simplefunctiontest.KeypadTest"

    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_50

    .line 582
    :cond_81
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$2;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v6, v6, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v6, v8}, Lcom/android/internal/app/ShutdownThread;->shutdown(Landroid/content/Context;Z)V

    goto :goto_50
.end method
