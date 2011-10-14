.class Landroid/widget/AbsListView$TwBounceController$1;
.super Ljava/lang/Object;
.source "AbsListView.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsListView$TwBounceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/AbsListView$TwBounceController;


# direct methods
.method constructor <init>(Landroid/widget/AbsListView$TwBounceController;)V
    .registers 2
    .parameter

    .prologue
    .line 5385
    iput-object p1, p0, Landroid/widget/AbsListView$TwBounceController$1;->this$1:Landroid/widget/AbsListView$TwBounceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .registers 3
    .parameter "input"

    .prologue
    .line 5388
    const/high16 v0, 0x3f00

    mul-float/2addr v0, p1

    return v0
.end method
