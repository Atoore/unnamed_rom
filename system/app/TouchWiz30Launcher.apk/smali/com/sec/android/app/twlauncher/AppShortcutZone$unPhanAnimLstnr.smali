.class Lcom/sec/android/app/twlauncher/AppShortcutZone$unPhanAnimLstnr;
.super Ljava/lang/Object;
.source "AppShortcutZone.java"

# interfaces
.implements Lcom/sec/android/app/twlauncher/GLAnim$GLAnimLstnr;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/twlauncher/AppShortcutZone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "unPhanAnimLstnr"
.end annotation


# instance fields
.field private mItemView:Lcom/sec/android/app/twlauncher/MenuItemView;

.field final synthetic this$0:Lcom/sec/android/app/twlauncher/AppShortcutZone;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/twlauncher/AppShortcutZone;Lcom/sec/android/app/twlauncher/MenuItemView;)V
    .locals 0
    .parameter
    .parameter "aItemView"

    .prologue
    .line 372
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone$unPhanAnimLstnr;->this$0:Lcom/sec/android/app/twlauncher/AppShortcutZone;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 373
    iput-object p2, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone$unPhanAnimLstnr;->mItemView:Lcom/sec/android/app/twlauncher/MenuItemView;

    .line 374
    return-void
.end method


# virtual methods
.method public onAnimEnd(Lcom/sec/android/app/twlauncher/GLAnim;)V
    .locals 2
    .parameter "aAnim"

    .prologue
    .line 380
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone$unPhanAnimLstnr;->mItemView:Lcom/sec/android/app/twlauncher/MenuItemView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/MenuItemView;->setPhantom(Z)V

    .line 385
    return-void
.end method

.method public onAnimStart(Lcom/sec/android/app/twlauncher/GLAnim;)V
    .locals 0
    .parameter "aAnim"

    .prologue
    .line 377
    return-void
.end method
