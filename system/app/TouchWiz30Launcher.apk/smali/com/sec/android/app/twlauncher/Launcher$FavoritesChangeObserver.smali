.class Lcom/sec/android/app/twlauncher/Launcher$FavoritesChangeObserver;
.super Landroid/database/ContentObserver;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/twlauncher/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FavoritesChangeObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/twlauncher/Launcher;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/twlauncher/Launcher;)V
    .locals 1
    .parameter

    .prologue
    .line 6085
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/Launcher$FavoritesChangeObserver;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    .line 6086
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 6087
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 6091
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher$FavoritesChangeObserver;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-static {v0}, Lcom/sec/android/app/twlauncher/Launcher;->access$5300(Lcom/sec/android/app/twlauncher/Launcher;)V

    .line 6092
    return-void
.end method
