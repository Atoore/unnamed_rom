.class public Lcom/sec/android/app/twlauncher/SetAsHomeMenu;
.super Landroid/widget/LinearLayout;
.source "SetAsHomeMenu.java"


# instance fields
.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mIsFistTime:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/SetAsHomeMenu;->init()V

    .line 18
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    .line 21
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/SetAsHomeMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 22
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f020047

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/SetAsHomeMenu;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 23
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter "canvas"

    .prologue
    const/4 v3, 0x0

    .line 31
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 33
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/SetAsHomeMenu;->mIsFistTime:Z

    if-nez v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/SetAsHomeMenu;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/SetAsHomeMenu;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/SetAsHomeMenu;->getHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 35
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/SetAsHomeMenu;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/SetAsHomeMenu;->mIsFistTime:Z

    .line 38
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .prologue
    .line 27
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 28
    return-void
.end method
