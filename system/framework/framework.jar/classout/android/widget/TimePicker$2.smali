.class Landroid/widget/TimePicker$2;
.super Ljava/lang/Object;
.source "TimePicker.java"

# interfaces
.implements Landroid/widget/NumberPicker$OnChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/TimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/TimePicker;


# direct methods
.method constructor <init>(Landroid/widget/TimePicker;)V
    .registers 2
    .parameter

    .prologue
    .line 116
    iput-object p1, p0, Landroid/widget/TimePicker$2;->this$0:Landroid/widget/TimePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Landroid/widget/NumberPicker;II)V
    .registers 8
    .parameter "spinner"
    .parameter "oldVal"
    .parameter "newVal"

    .prologue
    const/16 v1, 0xb

    const/4 v3, 0x0

    const/16 v2, 0xc

    .line 118
    iget-object v0, p0, Landroid/widget/TimePicker$2;->this$0:Landroid/widget/TimePicker;

    #setter for: Landroid/widget/TimePicker;->mCurrentHour:I
    invoke-static {v0, p3}, Landroid/widget/TimePicker;->access$002(Landroid/widget/TimePicker;I)I

    .line 119
    iget-object v0, p0, Landroid/widget/TimePicker$2;->this$0:Landroid/widget/TimePicker;

    #getter for: Landroid/widget/TimePicker;->mIs24HourView:Ljava/lang/Boolean;
    invoke-static {v0}, Landroid/widget/TimePicker;->access$100(Landroid/widget/TimePicker;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_5d

    .line 121
    if-ne p2, v1, :cond_1a

    if-eq p3, v2, :cond_1e

    :cond_1a
    if-ne p2, v2, :cond_43

    if-ne p3, v1, :cond_43

    .line 122
    :cond_1e
    iget-object v0, p0, Landroid/widget/TimePicker$2;->this$0:Landroid/widget/TimePicker;

    iget-object v1, p0, Landroid/widget/TimePicker$2;->this$0:Landroid/widget/TimePicker;

    #getter for: Landroid/widget/TimePicker;->mIsAm:Z
    invoke-static {v1}, Landroid/widget/TimePicker;->access$200(Landroid/widget/TimePicker;)Z

    move-result v1

    if-nez v1, :cond_63

    const/4 v1, 0x1

    :goto_29
    #setter for: Landroid/widget/TimePicker;->mIsAm:Z
    invoke-static {v0, v1}, Landroid/widget/TimePicker;->access$202(Landroid/widget/TimePicker;Z)Z

    .line 123
    iget-object v0, p0, Landroid/widget/TimePicker$2;->this$0:Landroid/widget/TimePicker;

    #getter for: Landroid/widget/TimePicker;->mAmPmButton:Landroid/widget/Button;
    invoke-static {v0}, Landroid/widget/TimePicker;->access$500(Landroid/widget/TimePicker;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/TimePicker$2;->this$0:Landroid/widget/TimePicker;

    #getter for: Landroid/widget/TimePicker;->mIsAm:Z
    invoke-static {v1}, Landroid/widget/TimePicker;->access$200(Landroid/widget/TimePicker;)Z

    move-result v1

    if-eqz v1, :cond_65

    iget-object v1, p0, Landroid/widget/TimePicker$2;->this$0:Landroid/widget/TimePicker;

    #getter for: Landroid/widget/TimePicker;->mAmText:Ljava/lang/String;
    invoke-static {v1}, Landroid/widget/TimePicker;->access$300(Landroid/widget/TimePicker;)Ljava/lang/String;

    move-result-object v1

    :goto_40
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 128
    :cond_43
    iget-object v0, p0, Landroid/widget/TimePicker$2;->this$0:Landroid/widget/TimePicker;

    #getter for: Landroid/widget/TimePicker;->mCurrentHour:I
    invoke-static {v0}, Landroid/widget/TimePicker;->access$000(Landroid/widget/TimePicker;)I

    move-result v0

    if-ne v0, v2, :cond_50

    .line 129
    iget-object v0, p0, Landroid/widget/TimePicker$2;->this$0:Landroid/widget/TimePicker;

    #setter for: Landroid/widget/TimePicker;->mCurrentHour:I
    invoke-static {v0, v3}, Landroid/widget/TimePicker;->access$002(Landroid/widget/TimePicker;I)I

    .line 131
    :cond_50
    iget-object v0, p0, Landroid/widget/TimePicker$2;->this$0:Landroid/widget/TimePicker;

    #getter for: Landroid/widget/TimePicker;->mIsAm:Z
    invoke-static {v0}, Landroid/widget/TimePicker;->access$200(Landroid/widget/TimePicker;)Z

    move-result v0

    if-nez v0, :cond_5d

    .line 133
    iget-object v0, p0, Landroid/widget/TimePicker$2;->this$0:Landroid/widget/TimePicker;

    invoke-static {v0, v2}, Landroid/widget/TimePicker;->access$012(Landroid/widget/TimePicker;I)I

    .line 136
    :cond_5d
    iget-object v0, p0, Landroid/widget/TimePicker$2;->this$0:Landroid/widget/TimePicker;

    #calls: Landroid/widget/TimePicker;->onTimeChanged()V
    invoke-static {v0}, Landroid/widget/TimePicker;->access$600(Landroid/widget/TimePicker;)V

    .line 137
    return-void

    :cond_63
    move v1, v3

    .line 122
    goto :goto_29

    .line 123
    :cond_65
    iget-object v1, p0, Landroid/widget/TimePicker$2;->this$0:Landroid/widget/TimePicker;

    #getter for: Landroid/widget/TimePicker;->mPmText:Ljava/lang/String;
    invoke-static {v1}, Landroid/widget/TimePicker;->access$400(Landroid/widget/TimePicker;)Ljava/lang/String;

    move-result-object v1

    goto :goto_40
.end method
