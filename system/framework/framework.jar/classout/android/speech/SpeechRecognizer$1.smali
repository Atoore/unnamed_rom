.class Landroid/speech/SpeechRecognizer$1;
.super Landroid/os/Handler;
.source "SpeechRecognizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/speech/SpeechRecognizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/speech/SpeechRecognizer;


# direct methods
.method constructor <init>(Landroid/speech/SpeechRecognizer;)V
    .registers 2
    .parameter

    .prologue
    .line 106
    iput-object p1, p0, Landroid/speech/SpeechRecognizer$1;->this$0:Landroid/speech/SpeechRecognizer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 109
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_26

    .line 123
    .end local p0
    :goto_5
    return-void

    .line 111
    .restart local p0
    :pswitch_6
    iget-object v0, p0, Landroid/speech/SpeechRecognizer$1;->this$0:Landroid/speech/SpeechRecognizer;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Landroid/content/Intent;

    #calls: Landroid/speech/SpeechRecognizer;->handleStartListening(Landroid/content/Intent;)V
    invoke-static {v0, p0}, Landroid/speech/SpeechRecognizer;->access$000(Landroid/speech/SpeechRecognizer;Landroid/content/Intent;)V

    goto :goto_5

    .line 114
    .restart local p0
    :pswitch_10
    iget-object v0, p0, Landroid/speech/SpeechRecognizer$1;->this$0:Landroid/speech/SpeechRecognizer;

    #calls: Landroid/speech/SpeechRecognizer;->handleStopMessage()V
    invoke-static {v0}, Landroid/speech/SpeechRecognizer;->access$100(Landroid/speech/SpeechRecognizer;)V

    goto :goto_5

    .line 117
    :pswitch_16
    iget-object v0, p0, Landroid/speech/SpeechRecognizer$1;->this$0:Landroid/speech/SpeechRecognizer;

    #calls: Landroid/speech/SpeechRecognizer;->handleCancelMessage()V
    invoke-static {v0}, Landroid/speech/SpeechRecognizer;->access$200(Landroid/speech/SpeechRecognizer;)V

    goto :goto_5

    .line 120
    :pswitch_1c
    iget-object v0, p0, Landroid/speech/SpeechRecognizer$1;->this$0:Landroid/speech/SpeechRecognizer;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Landroid/speech/RecognitionListener;

    #calls: Landroid/speech/SpeechRecognizer;->handleChangeListener(Landroid/speech/RecognitionListener;)V
    invoke-static {v0, p0}, Landroid/speech/SpeechRecognizer;->access$300(Landroid/speech/SpeechRecognizer;Landroid/speech/RecognitionListener;)V

    goto :goto_5

    .line 109
    :pswitch_data_26
    .packed-switch 0x1
        :pswitch_6
        :pswitch_10
        :pswitch_16
        :pswitch_1c
    .end packed-switch
.end method
