.class Lcom/sec/android/app/twlauncher/LauncherModel$PackageModificationIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "LauncherModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/twlauncher/LauncherModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PackageModificationIntentReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/twlauncher/LauncherModel;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/twlauncher/LauncherModel;)V
    .locals 0
    .parameter

    .prologue
    .line 197
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/LauncherModel$PackageModificationIntentReceiver;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/twlauncher/LauncherModel;Lcom/sec/android/app/twlauncher/LauncherModel$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 197
    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/LauncherModel$PackageModificationIntentReceiver;-><init>(Lcom/sec/android/app/twlauncher/LauncherModel;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 200
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel$PackageModificationIntentReceiver;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$002(Lcom/sec/android/app/twlauncher/LauncherModel;Z)Z

    .line 201
    return-void
.end method
