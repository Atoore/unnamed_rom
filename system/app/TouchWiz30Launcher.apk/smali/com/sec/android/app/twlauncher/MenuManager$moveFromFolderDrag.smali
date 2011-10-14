.class Lcom/sec/android/app/twlauncher/MenuManager$moveFromFolderDrag;
.super Ljava/lang/Object;
.source "MenuManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/twlauncher/MenuManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "moveFromFolderDrag"
.end annotation


# instance fields
.field mDragView:Landroid/view/View;

.field mOrigIconX:I

.field mOrigIconY:I

.field mSrc:Lcom/sec/android/app/twlauncher/UserFolder;

.field final synthetic this$0:Lcom/sec/android/app/twlauncher/MenuManager;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/twlauncher/MenuManager;Lcom/sec/android/app/twlauncher/UserFolder;Landroid/view/View;Landroid/graphics/Point;)V
    .locals 1
    .parameter
    .parameter "aSrc"
    .parameter "aDragView"
    .parameter "aLoc"

    .prologue
    .line 1752
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/MenuManager$moveFromFolderDrag;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1753
    iput-object p3, p0, Lcom/sec/android/app/twlauncher/MenuManager$moveFromFolderDrag;->mDragView:Landroid/view/View;

    .line 1754
    iput-object p2, p0, Lcom/sec/android/app/twlauncher/MenuManager$moveFromFolderDrag;->mSrc:Lcom/sec/android/app/twlauncher/UserFolder;

    .line 1755
    iget v0, p4, Landroid/graphics/Point;->x:I

    iput v0, p0, Lcom/sec/android/app/twlauncher/MenuManager$moveFromFolderDrag;->mOrigIconX:I

    .line 1756
    iget v0, p4, Landroid/graphics/Point;->y:I

    iput v0, p0, Lcom/sec/android/app/twlauncher/MenuManager$moveFromFolderDrag;->mOrigIconY:I

    .line 1758
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 1761
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager$moveFromFolderDrag;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/MenuManager$moveFromFolderDrag;->mSrc:Lcom/sec/android/app/twlauncher/UserFolder;

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager$moveFromFolderDrag;->mDragView:Landroid/view/View;

    new-instance v3, Landroid/graphics/PointF;

    iget v4, p0, Lcom/sec/android/app/twlauncher/MenuManager$moveFromFolderDrag;->mOrigIconX:I

    int-to-float v4, v4

    iget v5, p0, Lcom/sec/android/app/twlauncher/MenuManager$moveFromFolderDrag;->mOrigIconY:I

    int-to-float v5, v5

    invoke-direct {v3, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/app/twlauncher/MenuManager;->access$100(Lcom/sec/android/app/twlauncher/MenuManager;Lcom/sec/android/app/twlauncher/DragSource;Landroid/view/View;Landroid/graphics/PointF;)Z

    .line 1762
    return-void
.end method
