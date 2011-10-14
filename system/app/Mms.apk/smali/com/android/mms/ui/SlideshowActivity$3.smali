.class Lcom/android/mms/ui/SlideshowActivity$3;
.super Ljava/lang/Object;
.source "SlideshowActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/SlideshowActivity;->SlideShowActivityRunnable(Lcom/android/mms/model/SlideshowModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/SlideshowActivity;

.field final synthetic val$model:Lcom/android/mms/model/SlideshowModel;

.field final synthetic val$showModel:Lcom/android/mms/model/SlideshowModel;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SlideshowActivity;Lcom/android/mms/model/SlideshowModel;Lcom/android/mms/model/SlideshowModel;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 499
    iput-object p1, p0, Lcom/android/mms/ui/SlideshowActivity$3;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    iput-object p2, p0, Lcom/android/mms/ui/SlideshowActivity$3;->val$model:Lcom/android/mms/model/SlideshowModel;

    iput-object p3, p0, Lcom/android/mms/ui/SlideshowActivity$3;->val$showModel:Lcom/android/mms/model/SlideshowModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private isRotating()Z
    .locals 1

    .prologue
    .line 501
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity$3;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    invoke-static {v0}, Lcom/android/mms/ui/SlideshowActivity;->access$300(Lcom/android/mms/ui/SlideshowActivity;)Lcom/android/mms/dom/smil/SmilPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/dom/smil/SmilPlayer;->isPausedState()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity$3;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    invoke-static {v0}, Lcom/android/mms/ui/SlideshowActivity;->access$300(Lcom/android/mms/ui/SlideshowActivity;)Lcom/android/mms/dom/smil/SmilPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/dom/smil/SmilPlayer;->isPlayingState()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity$3;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    invoke-static {v0}, Lcom/android/mms/ui/SlideshowActivity;->access$300(Lcom/android/mms/ui/SlideshowActivity;)Lcom/android/mms/dom/smil/SmilPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/dom/smil/SmilPlayer;->isPlayedState()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private printSmilDocXml(Lorg/w3c/dom/smil/SMILDocument;)V
    .locals 6
    .parameter "doc"

    .prologue
    const-string v5, "Mms/SlideshowActivity"

    .line 572
    const/4 v1, 0x0

    .line 574
    .local v1, ostream:Ljava/io/ByteArrayOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 575
    .end local v1           #ostream:Ljava/io/ByteArrayOutputStream;
    .local v2, ostream:Ljava/io/ByteArrayOutputStream;
    :try_start_1
    invoke-static {p1, v2}, Lcom/android/mms/dom/smil/parser/SmilXmlSerializer;->serialize(Lorg/w3c/dom/smil/SMILDocument;Ljava/io/OutputStream;)V

    .line 576
    const-string v3, "Mms/SlideshowActivity"

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 578
    if-eqz v2, :cond_0

    .line 580
    :try_start_2
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 586
    :cond_0
    :goto_0
    return-void

    .line 581
    :catch_0
    move-exception v0

    .line 582
    .local v0, e:Ljava/io/IOException;
    const-string v3, "Mms/SlideshowActivity"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 578
    .end local v0           #e:Ljava/io/IOException;
    .end local v2           #ostream:Ljava/io/ByteArrayOutputStream;
    .restart local v1       #ostream:Ljava/io/ByteArrayOutputStream;
    :catchall_0
    move-exception v3

    :goto_1
    if-eqz v1, :cond_1

    .line 580
    :try_start_3
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 583
    :cond_1
    :goto_2
    throw v3

    .line 581
    :catch_1
    move-exception v0

    .line 582
    .restart local v0       #e:Ljava/io/IOException;
    const-string v4, "Mms/SlideshowActivity"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 578
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #ostream:Ljava/io/ByteArrayOutputStream;
    .restart local v2       #ostream:Ljava/io/ByteArrayOutputStream;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2           #ostream:Ljava/io/ByteArrayOutputStream;
    .restart local v1       #ostream:Ljava/io/ByteArrayOutputStream;
    goto :goto_1
.end method

.method private showSlides(Lcom/android/mms/model/SlideshowModel;)V
    .locals 5
    .parameter "showModel"

    .prologue
    const/4 v3, 0x0

    .line 541
    invoke-direct {p0}, Lcom/android/mms/ui/SlideshowActivity$3;->isRotating()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 542
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity$3;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    invoke-static {v1}, Lcom/android/mms/ui/SlideshowActivity;->access$300(Lcom/android/mms/ui/SlideshowActivity;)Lcom/android/mms/dom/smil/SmilPlayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/dom/smil/SmilPlayer;->reload()V

    .line 566
    :goto_0
    return-void

    .line 545
    :cond_0
    const/4 v0, 0x0

    .line 546
    .local v0, firstPageDuration:I
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity$3;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    invoke-virtual {p1}, Lcom/android/mms/model/SlideshowModel;->getSlides()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, v1, Lcom/android/mms/ui/SlideshowActivity;->mSlides:Ljava/util/ArrayList;

    .line 548
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity$3;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    iget-object v1, v1, Lcom/android/mms/ui/SlideshowActivity;->mSlides:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity$3;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    iget-object v1, v1, Lcom/android/mms/ui/SlideshowActivity;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 550
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity$3;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    iget-object v1, v1, Lcom/android/mms/ui/SlideshowActivity;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 551
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity$3;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    invoke-static {v1}, Lcom/android/mms/ui/SlideshowActivity;->access$500(Lcom/android/mms/ui/SlideshowActivity;)Lcom/android/mms/ui/MmsPlayerController;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/mms/ui/MmsPlayerController;->setPageMoveButton(Z)V

    .line 554
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity$3;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    iget-object v1, v1, Lcom/android/mms/ui/SlideshowActivity;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/model/SlideModel;

    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->getDuration()I

    move-result v0

    .line 555
    const/16 v1, 0x3e8

    if-ge v0, v1, :cond_2

    if-lez v0, :cond_2

    .line 556
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity$3;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    invoke-static {v1}, Lcom/android/mms/ui/SlideshowActivity;->access$1100(Lcom/android/mms/ui/SlideshowActivity;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/SlideshowActivity$3;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    invoke-static {v2}, Lcom/android/mms/ui/SlideshowActivity;->access$1000(Lcom/android/mms/ui/SlideshowActivity;)Ljava/lang/Runnable;

    move-result-object v2

    const-wide/16 v3, 0x12c

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 558
    :cond_2
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity$3;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    invoke-static {v1}, Lcom/android/mms/ui/SlideshowActivity;->access$200(Lcom/android/mms/ui/SlideshowActivity;)V

    .line 559
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity$3;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    invoke-static {v1}, Lcom/android/mms/ui/SlideshowActivity;->access$300(Lcom/android/mms/ui/SlideshowActivity;)Lcom/android/mms/dom/smil/SmilPlayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/dom/smil/SmilPlayer;->play()V

    goto :goto_0

    .line 562
    :cond_3
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity$3;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    invoke-static {v1}, Lcom/android/mms/ui/SlideshowActivity;->access$200(Lcom/android/mms/ui/SlideshowActivity;)V

    .line 563
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity$3;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    invoke-static {v1}, Lcom/android/mms/ui/SlideshowActivity;->access$300(Lcom/android/mms/ui/SlideshowActivity;)Lcom/android/mms/dom/smil/SmilPlayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/dom/smil/SmilPlayer;->play()V

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 506
    const-string v0, "Mms/SlideshowActivity"

    const-string v1, "SlideShowActivityRunnable:Run"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity$3;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    invoke-static {}, Lcom/android/mms/dom/smil/SmilPlayer;->getPlayer()Lcom/android/mms/dom/smil/SmilPlayer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/ui/SlideshowActivity;->access$302(Lcom/android/mms/ui/SlideshowActivity;Lcom/android/mms/dom/smil/SmilPlayer;)Lcom/android/mms/dom/smil/SmilPlayer;

    .line 508
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity$3;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    invoke-static {v0}, Lcom/android/mms/ui/SlideshowActivity;->access$400(Lcom/android/mms/ui/SlideshowActivity;)V

    .line 510
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity$3;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    invoke-static {v0}, Lcom/android/mms/ui/SlideshowActivity;->access$500(Lcom/android/mms/ui/SlideshowActivity;)Lcom/android/mms/ui/MmsPlayerController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 511
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity$3;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    invoke-static {v0}, Lcom/android/mms/ui/SlideshowActivity;->access$600(Lcom/android/mms/ui/SlideshowActivity;)V

    .line 515
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity$3;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    invoke-static {v0}, Lcom/android/mms/ui/SlideshowActivity;->access$700(Lcom/android/mms/ui/SlideshowActivity;)Lorg/w3c/dom/smil/SMILDocument;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 516
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity$3;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/mms/ui/SlideshowActivity;->access$702(Lcom/android/mms/ui/SlideshowActivity;Lorg/w3c/dom/smil/SMILDocument;)Lorg/w3c/dom/smil/SMILDocument;

    .line 518
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity$3;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity$3;->val$model:Lcom/android/mms/model/SlideshowModel;

    invoke-static {v1}, Lcom/android/mms/model/SmilHelper;->getDocument(Lcom/android/mms/model/SlideshowModel;)Lorg/w3c/dom/smil/SMILDocument;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/ui/SlideshowActivity;->access$702(Lcom/android/mms/ui/SlideshowActivity;Lorg/w3c/dom/smil/SMILDocument;)Lorg/w3c/dom/smil/SMILDocument;

    .line 519
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity$3;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    invoke-static {v0}, Lcom/android/mms/ui/SlideshowActivity;->access$700(Lcom/android/mms/ui/SlideshowActivity;)Lorg/w3c/dom/smil/SMILDocument;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/SlideshowActivity$3;->printSmilDocXml(Lorg/w3c/dom/smil/SMILDocument;)V

    .line 522
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity$3;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    invoke-static {v0}, Lcom/android/mms/ui/SlideshowActivity;->access$700(Lcom/android/mms/ui/SlideshowActivity;)Lorg/w3c/dom/smil/SMILDocument;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/smil/SMILDocument;->getBody()Lorg/w3c/dom/smil/SMILElement;

    move-result-object v0

    const-string v1, "par"

    invoke-interface {v0, v1}, Lorg/w3c/dom/smil/SMILElement;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    if-nez v0, :cond_2

    .line 523
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity$3;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/SlideshowActivity;->finish()V

    .line 527
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity$3;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    invoke-static {v0}, Lcom/android/mms/ui/SlideshowActivity;->access$800(Lcom/android/mms/ui/SlideshowActivity;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 528
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity$3;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    invoke-static {v0}, Lcom/android/mms/ui/SlideshowActivity;->access$900(Lcom/android/mms/ui/SlideshowActivity;)V

    .line 530
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity$3;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    invoke-static {v0}, Lcom/android/mms/ui/SlideshowActivity;->access$300(Lcom/android/mms/ui/SlideshowActivity;)Lcom/android/mms/dom/smil/SmilPlayer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity$3;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    invoke-static {v1}, Lcom/android/mms/ui/SlideshowActivity;->access$700(Lcom/android/mms/ui/SlideshowActivity;)Lorg/w3c/dom/smil/SMILDocument;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mms/dom/smil/SmilPlayer;->init(Lorg/w3c/dom/smil/ElementTime;)V

    .line 532
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity$3;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    invoke-static {v0}, Lcom/android/mms/ui/SlideshowActivity;->access$800(Lcom/android/mms/ui/SlideshowActivity;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 538
    :goto_0
    return-void

    .line 535
    :cond_4
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity$3;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/mms/ui/SlideshowActivity;->access$802(Lcom/android/mms/ui/SlideshowActivity;Z)Z

    .line 537
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity$3;->val$showModel:Lcom/android/mms/model/SlideshowModel;

    invoke-direct {p0, v0}, Lcom/android/mms/ui/SlideshowActivity$3;->showSlides(Lcom/android/mms/model/SlideshowModel;)V

    goto :goto_0
.end method
