.class Lcom/sec/android/app/twlauncher/Launcher$ExternalAppsAvailabilityReceiver;
.super Landroid/content/BroadcastReceiver;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/twlauncher/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExternalAppsAvailabilityReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/twlauncher/Launcher;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/twlauncher/Launcher;)V
    .locals 0
    .parameter

    .prologue
    .line 5787
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/Launcher$ExternalAppsAvailabilityReceiver;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/twlauncher/Launcher;Lcom/sec/android/app/twlauncher/Launcher$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5787
    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/Launcher$ExternalAppsAvailabilityReceiver;-><init>(Lcom/sec/android/app/twlauncher/Launcher;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 5790
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 5792
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5796
    :cond_0
    const-string v2, "Launcher.LauncherModel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "application intent received: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5799
    const-string v2, "android.intent.extra.changed_package_list"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 5800
    .local v1, packages:[Ljava/lang/String;
    if-eqz v1, :cond_1

    array-length v2, v1

    if-nez v2, :cond_2

    .line 5806
    .end local v1           #packages:[Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 5804
    .restart local v1       #packages:[Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher$ExternalAppsAvailabilityReceiver;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-static {v2}, Lcom/sec/android/app/twlauncher/Launcher;->access$4400(Lcom/sec/android/app/twlauncher/Launcher;)V

    goto :goto_0
.end method
