.class public Lcom/sec/android/app/twlauncher/LauncherApplication;
.super Landroid/app/Application;
.source "LauncherApplication.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 3

    .prologue
    .line 31
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    const-wide/32 v1, 0x1000000

    invoke-virtual {v0, v1, v2}, Ldalvik/system/VMRuntime;->setMinimumHeapSize(J)J

    .line 33
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 34
    return-void
.end method
