.class Landroid/webkit/WebView$3;
.super Ljava/lang/Object;
.source "WebView.java"

# interfaces
.implements Landroid/webkit/WebView$WebTextSelectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Landroid/webkit/WebView;)V
    .registers 2
    .parameter

    .prologue
    .line 1201
    iput-object p1, p0, Landroid/webkit/WebView$3;->this$0:Landroid/webkit/WebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelectionChanged(I)V
    .registers 6
    .parameter "event"

    .prologue
    const-string v3, "WebTextSelectionListener"

    .line 1205
    sget-boolean v1, Landroid/webkit/DebugFlags;->WEB_VIEW:Z

    if-eqz v1, :cond_37

    .line 1206
    const-string v1, "WebTextSelectionListener"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " onSelectionChanged  EVENT ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1208
    iget-object v1, p0, Landroid/webkit/WebView$3;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getWebTextSelectionControls()Landroid/webkit/WebTextSelectionControls;

    move-result-object v0

    .line 1210
    .local v0, control:Landroid/webkit/WebTextSelectionControls;
    const/4 v1, 0x6

    if-ne p1, v1, :cond_38

    .line 1211
    const-string v1, "WebTextSelectionListener"

    const-string v1, " onSelectionChanged EVENT_SELECTION_CLEARED should disaper ballon option"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1212
    if-eqz v0, :cond_37

    .line 1214
    const-string v1, "WebTextSelectionListener"

    const-string v1, " onSelectionChanged(): control should br null "

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1233
    .end local v0           #control:Landroid/webkit/WebTextSelectionControls;
    :cond_37
    :goto_37
    return-void

    .line 1219
    .restart local v0       #control:Landroid/webkit/WebTextSelectionControls;
    :cond_38
    if-nez v0, :cond_42

    .line 1221
    const-string v1, "WebTextSelectionListener"

    const-string v1, " onSelectionChanged(): control == null "

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_37

    .line 1226
    :cond_42
    const-string v1, "WebTextSelectionListener"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " onSelectionChanged(): text = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/webkit/WebTextSelectionControls;->getSelectionText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " getSelectionRect = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/webkit/WebTextSelectionControls;->getSelectionRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " getSelectionRegionStartRect = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/webkit/WebTextSelectionControls;->getSelectionRegionStartRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " getSelectionRegionEndRect = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/webkit/WebTextSelectionControls;->getSelectionRegionEndRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_37
.end method
