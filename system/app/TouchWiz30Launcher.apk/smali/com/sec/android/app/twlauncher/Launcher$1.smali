.class Lcom/sec/android/app/twlauncher/Launcher$1;
.super Landroid/content/BroadcastReceiver;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/twlauncher/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/twlauncher/Launcher;


# direct methods
.method constructor <init>(Lcom/sec/android/app/twlauncher/Launcher;)V
    .locals 0
    .parameter

    .prologue
    .line 1020
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/Launcher$1;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v6, 0x1

    const-string v7, "Launcher"

    .line 1023
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1024
    .local v1, cr:Landroid/content/ContentResolver;
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1025
    .local v0, action:Ljava/lang/String;
    const-string v5, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1027
    const-string v5, "Launcher"

    const-string v5, "ACTION_SCREEN_OFF"

    invoke-static {v7, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1028
    const-string v5, "phone_lock_status"

    invoke-static {v1, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1029
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/Launcher$1;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-static {v5, v6}, Lcom/sec/android/app/twlauncher/Launcher;->access$502(Lcom/sec/android/app/twlauncher/Launcher;Z)Z

    .line 1073
    :cond_0
    :goto_0
    return-void

    .line 1030
    :cond_1
    const-string v5, "android.intent.action.USER_PRESENT"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1032
    const-string v5, "Launcher"

    const-string v5, "ACTION_USER_PRESENT"

    invoke-static {v7, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1033
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/Launcher$1;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-static {v5}, Lcom/sec/android/app/twlauncher/Launcher;->access$600(Lcom/sec/android/app/twlauncher/Launcher;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1034
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/Launcher$1;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/sec/android/app/twlauncher/Launcher;->access$502(Lcom/sec/android/app/twlauncher/Launcher;Z)Z

    goto :goto_0

    .line 1035
    :cond_2
    const-string v5, "android.intent.action.MULTI_CSC_CLEAR"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1036
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/Launcher$1;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    const-string v6, "launcher.db"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/twlauncher/Launcher;->deleteDatabase(Ljava/lang/String;)Z

    move-result v2

    .line 1038
    .local v2, ret:Z
    const-string v5, "Launcher"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "deleted a database file = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1041
    .end local v2           #ret:Z
    :cond_3
    const-string v5, "android.intent.action.WIDGETS"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1042
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/Launcher$1;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/Launcher;->deactivateAllScrollMenus()V

    .line 1043
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/Launcher$1;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Launcher$1;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-static {v6}, Lcom/sec/android/app/twlauncher/Launcher;->access$700(Lcom/sec/android/app/twlauncher/Launcher;)Lcom/sec/android/app/twlauncher/AddWidgetDialog;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Lcom/sec/android/app/twlauncher/Launcher;->access$800(Lcom/sec/android/app/twlauncher/Launcher;Landroid/view/View;Landroid/widget/ListAdapter;)V

    goto :goto_0

    .line 1045
    :cond_4
    const-string v5, "android.intent.action.SHORTCUTS"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1047
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/Launcher$1;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/Launcher;->deactivateAllScrollMenus()V

    .line 1048
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/Launcher$1;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-static {v5}, Lcom/sec/android/app/twlauncher/Launcher;->access$900(Lcom/sec/android/app/twlauncher/Launcher;)V

    goto :goto_0

    .line 1049
    :cond_5
    const-string v5, "android.intent.action.WALLPAPER_SETTINGS"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1050
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/Launcher$1;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/Launcher;->deactivateAllScrollMenus()V

    .line 1051
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/Launcher$1;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-static {v5}, Lcom/sec/android/app/twlauncher/Launcher;->access$1000(Lcom/sec/android/app/twlauncher/Launcher;)V

    goto/16 :goto_0

    .line 1057
    :cond_6
    const-string v5, "com.android.samsungtest.AnswerLauncherDisplay"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1058
    const-string v5, "SmdPba"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1059
    .local v3, smdpba:Ljava/lang/String;
    if-eqz v3, :cond_7

    .line 1060
    sput-object v3, Lcom/sec/android/app/twlauncher/Launcher;->mIsSmdPbaTested:Ljava/lang/String;

    .line 1061
    :cond_7
    const-string v5, "UniqueNumber"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1062
    .local v4, uniquenumber:Ljava/lang/String;
    if-eqz v4, :cond_8

    .line 1063
    sput-object v4, Lcom/sec/android/app/twlauncher/Launcher;->mUNnumber:Ljava/lang/String;

    .line 1069
    :cond_8
    const-string v5, "Launcher"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "received factory mode info : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/sec/android/app/twlauncher/Launcher;->mIsSmdPbaTested:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/sec/android/app/twlauncher/Launcher;->mUNnumber:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
