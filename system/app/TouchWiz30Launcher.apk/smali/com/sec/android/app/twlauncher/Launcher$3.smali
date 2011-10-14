.class Lcom/sec/android/app/twlauncher/Launcher$3;
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
    .line 1092
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/Launcher$3;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v8, 0x0

    const-string v7, "Launcher"

    .line 1095
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "android.intent.action.BADGE_COUNT_UPDATE"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1096
    const-string v5, "badge_count"

    invoke-virtual {p2, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1097
    .local v0, badgeCnt:I
    const-string v5, "badge_count_package_name"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1098
    .local v4, packageName:Ljava/lang/String;
    const-string v5, "badge_count_class_name"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1100
    .local v1, className:Ljava/lang/String;
    if-nez v4, :cond_1

    .line 1101
    const-string v5, "Launcher"

    const-string v5, "packageName is null"

    invoke-static {v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1125
    .end local v0           #badgeCnt:I
    .end local v1           #className:Ljava/lang/String;
    .end local v4           #packageName:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 1103
    .restart local v0       #badgeCnt:I
    .restart local v1       #className:Ljava/lang/String;
    .restart local v4       #packageName:Ljava/lang/String;
    :cond_1
    if-nez v1, :cond_2

    .line 1104
    const-string v5, "Launcher"

    const-string v5, "className is null"

    invoke-static {v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1109
    :cond_2
    const-string v5, "Launcher"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "packageName : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1110
    const-string v5, "Launcher"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "className : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1111
    const-string v5, "Launcher"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "badgeCnt : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1114
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/Launcher$3;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1115
    .local v2, cr:Landroid/content/ContentResolver;
    invoke-static {v2, v4, v1, v0}, Lcom/sec/android/touchwiz/app/BadgeNotification$Apps;->setBadgeCount(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 1116
    .end local v0           #badgeCnt:I
    .end local v1           #className:Ljava/lang/String;
    .end local v2           #cr:Landroid/content/ContentResolver;
    .end local v4           #packageName:Ljava/lang/String;
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "android.intent.action.TSTORE_COUNT_UPDATE"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1117
    const-string v5, "tstore_update_count"

    invoke-virtual {p2, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 1119
    .local v3, nTstoreUpdatingCnt:I
    const-string v5, "Launcher"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "nTstoreUpdatingCnt : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1121
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/Launcher$3;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1122
    .restart local v2       #cr:Landroid/content/ContentResolver;
    const-string v5, "com.skt.skaf.A000Z00040"

    const-string v6, "com.skt.skaf.A000Z00040.A000Z00040"

    invoke-static {v2, v5, v6, v3}, Lcom/sec/android/touchwiz/app/BadgeNotification$Apps;->setBadgeCount(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0
.end method
