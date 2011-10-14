.class Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$1;
.super Landroid/opengl/GLSurfaceView;
.source "GLSurfaceViewGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;


# direct methods
.method constructor <init>(Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 114
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$1;->this$0:Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;

    invoke-direct {p0, p2}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public gatherTransparentRegion(Landroid/graphics/Region;)Z
    .locals 1
    .parameter "r"

    .prologue
    .line 117
    const/4 v0, 0x1

    return v0
.end method
