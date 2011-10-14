.class public Lcom/android/mms/ui/SlideView$MovieView;
.super Landroid/widget/ImageView;
.source "SlideView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/SlideView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MovieView"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/SlideView;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/SlideView;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    .line 891
    iput-object p1, p0, Lcom/android/mms/ui/SlideView$MovieView;->this$0:Lcom/android/mms/ui/SlideView;

    .line 892
    invoke-direct {p0, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 894
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 21
    .parameter "canvas"

    .prologue
    .line 898
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SlideView$MovieView;->this$0:Lcom/android/mms/ui/SlideView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/mms/ui/SlideView;->access$1202(Lcom/android/mms/ui/SlideView;Landroid/graphics/Canvas;)Landroid/graphics/Canvas;

    .line 899
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SlideView$MovieView;->this$0:Lcom/android/mms/ui/SlideView;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-static/range {v17 .. v18}, Lcom/android/mms/ui/SlideView;->access$1302(Lcom/android/mms/ui/SlideView;Z)Z

    .line 900
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SlideView$MovieView;->this$0:Lcom/android/mms/ui/SlideView;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/mms/ui/SlideView;->access$1400(Lcom/android/mms/ui/SlideView;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 901
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SlideView$MovieView;->this$0:Lcom/android/mms/ui/SlideView;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-static/range {v17 .. v18}, Lcom/android/mms/ui/SlideView;->access$1502(Lcom/android/mms/ui/SlideView;Z)Z

    .line 903
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SlideView$MovieView;->this$0:Lcom/android/mms/ui/SlideView;

    move-object/from16 v17, v0

    invoke-static {}, Lcom/android/mms/dom/smil/SmilPlayer;->getPlayer()Lcom/android/mms/dom/smil/SmilPlayer;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/android/mms/ui/SlideView;->access$1602(Lcom/android/mms/ui/SlideView;Lcom/android/mms/dom/smil/SmilPlayer;)Lcom/android/mms/dom/smil/SmilPlayer;

    .line 904
    const/high16 v17, -0x100

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 905
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    .line 906
    .local v12, now:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SlideView$MovieView;->this$0:Lcom/android/mms/ui/SlideView;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/mms/ui/SlideView;->access$1700(Lcom/android/mms/ui/SlideView;)J

    move-result-wide v17

    const-wide/16 v19, 0x0

    cmp-long v17, v17, v19

    if-nez v17, :cond_1

    .line 907
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SlideView$MovieView;->this$0:Lcom/android/mms/ui/SlideView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-wide v1, v12

    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/SlideView;->access$1702(Lcom/android/mms/ui/SlideView;J)J

    .line 909
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SlideView$MovieView;->this$0:Lcom/android/mms/ui/SlideView;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/mms/ui/SlideView;->access$1800(Lcom/android/mms/ui/SlideView;)Landroid/graphics/Movie;

    move-result-object v17

    if-eqz v17, :cond_9

    .line 910
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SlideView$MovieView;->this$0:Lcom/android/mms/ui/SlideView;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/mms/ui/SlideView;->access$1800(Lcom/android/mms/ui/SlideView;)Landroid/graphics/Movie;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Movie;->duration()I

    move-result v7

    .line 911
    .local v7, dur:I
    if-nez v7, :cond_2

    .line 912
    const/16 v7, 0x3e8

    .line 914
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SlideView$MovieView;->this$0:Lcom/android/mms/ui/SlideView;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/mms/ui/SlideView;->access$1400(Lcom/android/mms/ui/SlideView;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 915
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SlideView$MovieView;->this$0:Lcom/android/mms/ui/SlideView;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-static/range {v17 .. v18}, Lcom/android/mms/ui/SlideView;->access$1902(Lcom/android/mms/ui/SlideView;Z)Z

    .line 916
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SlideView$MovieView;->this$0:Lcom/android/mms/ui/SlideView;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-static/range {v17 .. v18}, Lcom/android/mms/ui/SlideView;->access$1402(Lcom/android/mms/ui/SlideView;Z)Z

    .line 918
    :cond_3
    const/4 v15, 0x0

    .line 920
    .local v15, relTime:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SlideView$MovieView;->this$0:Lcom/android/mms/ui/SlideView;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/mms/ui/SlideView;->access$2000(Lcom/android/mms/ui/SlideView;)J

    move-result-wide v17

    const-wide/16 v19, 0x0

    cmp-long v17, v17, v19

    if-lez v17, :cond_a

    .line 921
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SlideView$MovieView;->this$0:Lcom/android/mms/ui/SlideView;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/mms/ui/SlideView;->access$2000(Lcom/android/mms/ui/SlideView;)J

    move-result-wide v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SlideView$MovieView;->this$0:Lcom/android/mms/ui/SlideView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/mms/ui/SlideView;->access$1700(Lcom/android/mms/ui/SlideView;)J

    move-result-wide v19

    sub-long v17, v17, v19

    move v0, v7

    int-to-long v0, v0

    move-wide/from16 v19, v0

    rem-long v17, v17, v19

    move-wide/from16 v0, v17

    long-to-int v0, v0

    move v15, v0

    .line 925
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SlideView$MovieView;->this$0:Lcom/android/mms/ui/SlideView;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/mms/ui/SlideView;->access$1800(Lcom/android/mms/ui/SlideView;)Landroid/graphics/Movie;

    move-result-object v17

    move-object/from16 v0, v17

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/graphics/Movie;->setTime(I)Z

    .line 926
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SlideView$MovieView;->this$0:Lcom/android/mms/ui/SlideView;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/mms/ui/SlideView;->access$2200(Lcom/android/mms/ui/SlideView;)Z

    move-result v17

    if-eqz v17, :cond_9

    .line 928
    sget-object v6, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 929
    .local v6, config:Landroid/graphics/Bitmap$Config;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SlideView$MovieView;->this$0:Lcom/android/mms/ui/SlideView;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/mms/ui/SlideView;->access$1800(Lcom/android/mms/ui/SlideView;)Landroid/graphics/Movie;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Movie;->width()I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SlideView$MovieView;->this$0:Lcom/android/mms/ui/SlideView;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/mms/ui/SlideView;->access$1800(Lcom/android/mms/ui/SlideView;)Landroid/graphics/Movie;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Movie;->height()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    move-object v2, v6

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 930
    .local v14, padded:Landroid/graphics/Bitmap;
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v14}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 931
    .local v5, canvas2:Landroid/graphics/Canvas;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SlideView$MovieView;->this$0:Lcom/android/mms/ui/SlideView;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/mms/ui/SlideView;->access$1800(Lcom/android/mms/ui/SlideView;)Landroid/graphics/Movie;

    move-result-object v17

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move-object v1, v5

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Movie;->draw(Landroid/graphics/Canvas;FF)V

    .line 935
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SlideView$MovieView;->this$0:Lcom/android/mms/ui/SlideView;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/mms/ui/SlideView;->access$1800(Lcom/android/mms/ui/SlideView;)Landroid/graphics/Movie;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Movie;->width()I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SlideView$MovieView;->this$0:Lcom/android/mms/ui/SlideView;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/mms/ui/SlideView;->access$2300(Lcom/android/mms/ui/SlideView;)I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    div-float v8, v17, v18

    .line 936
    .local v8, hRatio:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SlideView$MovieView;->this$0:Lcom/android/mms/ui/SlideView;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/mms/ui/SlideView;->access$1800(Lcom/android/mms/ui/SlideView;)Landroid/graphics/Movie;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Movie;->height()I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    div-float v17, v17, v8

    move/from16 v0, v17

    float-to-int v0, v0

    move v10, v0

    .line 937
    .local v10, movieHeight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SlideView$MovieView;->this$0:Lcom/android/mms/ui/SlideView;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/mms/ui/SlideView;->access$1800(Lcom/android/mms/ui/SlideView;)Landroid/graphics/Movie;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Movie;->width()I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    div-float v17, v17, v8

    move/from16 v0, v17

    float-to-int v0, v0

    move v11, v0

    .line 939
    .local v11, movieWidth:I
    const/4 v9, 0x0

    .line 940
    .local v9, movieDrawTop:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SlideView$MovieView;->this$0:Lcom/android/mms/ui/SlideView;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/mms/ui/SlideView;->access$2400(Lcom/android/mms/ui/SlideView;)I

    move-result v17

    move/from16 v0, v17

    move v1, v10

    if-le v0, v1, :cond_4

    .line 941
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SlideView$MovieView;->this$0:Lcom/android/mms/ui/SlideView;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/mms/ui/SlideView;->access$2400(Lcom/android/mms/ui/SlideView;)I

    move-result v17

    sub-int v17, v17, v10

    div-int/lit8 v9, v17, 0x2

    .line 944
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SlideView$MovieView;->this$0:Lcom/android/mms/ui/SlideView;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/mms/ui/SlideView;->access$2400(Lcom/android/mms/ui/SlideView;)I

    move-result v17

    if-lez v17, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SlideView$MovieView;->this$0:Lcom/android/mms/ui/SlideView;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/mms/ui/SlideView;->access$2300(Lcom/android/mms/ui/SlideView;)I

    move-result v17

    if-lez v17, :cond_8

    .line 945
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SlideView$MovieView;->this$0:Lcom/android/mms/ui/SlideView;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/mms/ui/SlideView;->access$2400(Lcom/android/mms/ui/SlideView;)I

    move-result v17

    move v0, v10

    move/from16 v1, v17

    if-gt v0, v1, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SlideView$MovieView;->this$0:Lcom/android/mms/ui/SlideView;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/mms/ui/SlideView;->access$2300(Lcom/android/mms/ui/SlideView;)I

    move-result v17

    move v0, v11

    move/from16 v1, v17

    if-le v0, v1, :cond_8

    .line 946
    :cond_5
    if-le v11, v10, :cond_6

    .line 947
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SlideView$MovieView;->this$0:Lcom/android/mms/ui/SlideView;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/mms/ui/SlideView;->access$2300(Lcom/android/mms/ui/SlideView;)I

    move-result v17

    mul-int v17, v17, v10

    div-int v10, v17, v11

    .line 948
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SlideView$MovieView;->this$0:Lcom/android/mms/ui/SlideView;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/mms/ui/SlideView;->access$2300(Lcom/android/mms/ui/SlideView;)I

    move-result v11

    .line 950
    :cond_6
    if-le v10, v11, :cond_7

    .line 951
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SlideView$MovieView;->this$0:Lcom/android/mms/ui/SlideView;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/mms/ui/SlideView;->access$2300(Lcom/android/mms/ui/SlideView;)I

    move-result v17

    mul-int v17, v17, v11

    div-int v11, v17, v10

    .line 952
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SlideView$MovieView;->this$0:Lcom/android/mms/ui/SlideView;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/mms/ui/SlideView;->access$2400(Lcom/android/mms/ui/SlideView;)I

    move-result v10

    .line 954
    :cond_7
    const/16 v17, 0x1e0

    move v0, v10

    move/from16 v1, v17

    if-ge v0, v1, :cond_8

    const/16 v17, 0x1e0

    move/from16 v10, v17

    .line 958
    :cond_8
    const/16 v17, 0x0

    move-object v0, v14

    move v1, v11

    move v2, v10

    move/from16 v3, v17

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v16

    .line 961
    .local v16, resized:Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SlideView$MovieView;->this$0:Lcom/android/mms/ui/SlideView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move v1, v11

    invoke-static {v0, v1}, Lcom/android/mms/ui/SlideView;->access$2502(Lcom/android/mms/ui/SlideView;I)I

    .line 962
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SlideView$MovieView;->this$0:Lcom/android/mms/ui/SlideView;

    move-object/from16 v17, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/SlideView$MovieView;->getWidth()I

    move-result v18

    sub-int v18, v18, v11

    div-int/lit8 v18, v18, 0x2

    invoke-static/range {v17 .. v18}, Lcom/android/mms/ui/SlideView;->access$2602(Lcom/android/mms/ui/SlideView;I)I

    .line 963
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SlideView$MovieView;->this$0:Lcom/android/mms/ui/SlideView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move v1, v9

    invoke-static {v0, v1}, Lcom/android/mms/ui/SlideView;->access$2702(Lcom/android/mms/ui/SlideView;I)I

    .line 965
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/SlideView$MovieView;->getWidth()I

    move-result v17

    sub-int v17, v17, v11

    div-int/lit8 v17, v17, 0x2

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move v0, v9

    int-to-float v0, v0

    move/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    move/from16 v2, v17

    move/from16 v3, v18

    move-object/from16 v4, v19

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 966
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->recycle()V

    .line 967
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->recycle()V

    .line 970
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SlideView$MovieView;->this$0:Lcom/android/mms/ui/SlideView;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/mms/ui/SlideView;->access$1600(Lcom/android/mms/ui/SlideView;)Lcom/android/mms/dom/smil/SmilPlayer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/mms/dom/smil/SmilPlayer;->isPlayingState()Z

    move-result v17

    if-eqz v17, :cond_9

    .line 971
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/SlideView$MovieView;->invalidate()V

    .line 975
    .end local v5           #canvas2:Landroid/graphics/Canvas;
    .end local v6           #config:Landroid/graphics/Bitmap$Config;
    .end local v7           #dur:I
    .end local v8           #hRatio:F
    .end local v9           #movieDrawTop:I
    .end local v10           #movieHeight:I
    .end local v11           #movieWidth:I
    .end local v14           #padded:Landroid/graphics/Bitmap;
    .end local v15           #relTime:I
    .end local v16           #resized:Landroid/graphics/Bitmap;
    :cond_9
    invoke-super/range {p0 .. p1}, Landroid/widget/ImageView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 976
    return-void

    .line 923
    .restart local v7       #dur:I
    .restart local v15       #relTime:I
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SlideView$MovieView;->this$0:Lcom/android/mms/ui/SlideView;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/mms/ui/SlideView;->access$2100(Lcom/android/mms/ui/SlideView;)J

    move-result-wide v17

    sub-long v17, v12, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SlideView$MovieView;->this$0:Lcom/android/mms/ui/SlideView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/mms/ui/SlideView;->access$1700(Lcom/android/mms/ui/SlideView;)J

    move-result-wide v19

    sub-long v17, v17, v19

    move v0, v7

    int-to-long v0, v0

    move-wide/from16 v19, v0

    rem-long v17, v17, v19

    move-wide/from16 v0, v17

    long-to-int v0, v0

    move v15, v0

    goto/16 :goto_0
.end method
