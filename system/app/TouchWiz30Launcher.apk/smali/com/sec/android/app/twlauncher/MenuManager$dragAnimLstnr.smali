.class Lcom/sec/android/app/twlauncher/MenuManager$dragAnimLstnr;
.super Ljava/lang/Object;
.source "MenuManager.java"

# interfaces
.implements Lcom/sec/android/app/twlauncher/DragAnimation$DragAnimLstnr;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/twlauncher/MenuManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "dragAnimLstnr"
.end annotation


# instance fields
.field private mAnimView:Landroid/view/View;

.field private mSource:Lcom/sec/android/app/twlauncher/DragSource;

.field final synthetic this$0:Lcom/sec/android/app/twlauncher/MenuManager;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/twlauncher/MenuManager;Landroid/view/View;Lcom/sec/android/app/twlauncher/DragSource;)V
    .locals 0
    .parameter
    .parameter "aAnimView"
    .parameter "aSource"

    .prologue
    .line 2018
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/MenuManager$dragAnimLstnr;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2019
    iput-object p2, p0, Lcom/sec/android/app/twlauncher/MenuManager$dragAnimLstnr;->mAnimView:Landroid/view/View;

    .line 2020
    iput-object p3, p0, Lcom/sec/android/app/twlauncher/MenuManager$dragAnimLstnr;->mSource:Lcom/sec/android/app/twlauncher/DragSource;

    .line 2021
    return-void
.end method


# virtual methods
.method public onAnimEnd(Lcom/sec/android/app/twlauncher/DragAnimation;FF)V
    .locals 2
    .parameter "aAnim"
    .parameter "aX"
    .parameter "aY"

    .prologue
    const/4 v1, 0x0

    .line 2027
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager$dragAnimLstnr;->mAnimView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2028
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager$dragAnimLstnr;->mAnimView:Landroid/view/View;

    check-cast v0, Lcom/sec/android/app/twlauncher/MenuItemView;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/MenuItemView;->setIsDragging(Z)V

    .line 2029
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager$dragAnimLstnr;->mSource:Lcom/sec/android/app/twlauncher/DragSource;

    instance-of v0, v0, Lcom/sec/android/app/twlauncher/UserFolder;

    if-eqz v0, :cond_0

    .line 2030
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager$dragAnimLstnr;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->switchToNormalModeDelayed()V

    .line 2032
    :cond_0
    return-void
.end method

.method public onAnimStart(Lcom/sec/android/app/twlauncher/DragAnimation;)V
    .locals 0
    .parameter "aAnim"

    .prologue
    .line 2024
    return-void
.end method
