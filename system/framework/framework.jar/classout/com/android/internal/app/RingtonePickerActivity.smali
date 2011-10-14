.class public final Lcom/android/internal/app/RingtonePickerActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "RingtonePickerActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Ljava/lang/Runnable;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lcom/android/internal/app/AlertController$AlertParams$OnPrepareListViewListener;


# static fields
.field private static final DELAY_MS_SELECTION_PLAYED:I = 0x12c

.field private static final TAG:Ljava/lang/String; = "RingtonePickerActivity"


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mAudioMode:I

.field private mClickedPos:I

.field private mCursor:Landroid/database/Cursor;

.field private mDefaultRingtone:Landroid/media/Ringtone;

.field private mDefaultRingtonePos:I

.field private mDidRegister:Z

.field private mExistingUri:Landroid/net/Uri;

.field private mHandler:Landroid/os/Handler;

.field private mHasDefaultItem:Z

.field private mHasSilentItem:Z

.field private mIncludeDrm:Z

.field private mRingtoneClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private mRingtoneManager:Landroid/media/RingtoneManager;

.field private mRingtoneTypes:I

.field private mSDcardReceiver:Landroid/content/BroadcastReceiver;

.field private mSampleRingtonePos:I

.field private mSilentPos:I

.field private mStaticItemCount:I

.field private mUriForDefaultItem:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, -0x1

    .line 62
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 81
    iput v0, p0, Lcom/android/internal/app/RingtonePickerActivity;->mSilentPos:I

    .line 84
    iput v0, p0, Lcom/android/internal/app/RingtonePickerActivity;->mDefaultRingtonePos:I

    .line 87
    iput v0, p0, Lcom/android/internal/app/RingtonePickerActivity;->mClickedPos:I

    .line 90
    iput v0, p0, Lcom/android/internal/app/RingtonePickerActivity;->mSampleRingtonePos:I

    .line 108
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/RingtonePickerActivity;->mDidRegister:Z

    .line 122
    new-instance v0, Lcom/android/internal/app/RingtonePickerActivity$1;

    invoke-direct {v0, p0}, Lcom/android/internal/app/RingtonePickerActivity$1;-><init>(Lcom/android/internal/app/RingtonePickerActivity;)V

    iput-object v0, p0, Lcom/android/internal/app/RingtonePickerActivity;->mRingtoneClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 139
    new-instance v0, Lcom/android/internal/app/RingtonePickerActivity$2;

    invoke-direct {v0, p0}, Lcom/android/internal/app/RingtonePickerActivity$2;-><init>(Lcom/android/internal/app/RingtonePickerActivity;)V

    iput-object v0, p0, Lcom/android/internal/app/RingtonePickerActivity;->mSDcardReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$002(Lcom/android/internal/app/RingtonePickerActivity;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    iput p1, p0, Lcom/android/internal/app/RingtonePickerActivity;->mClickedPos:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/internal/app/RingtonePickerActivity;II)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Lcom/android/internal/app/RingtonePickerActivity;->playRingtone(II)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/app/RingtonePickerActivity;)Landroid/database/Cursor;
    .registers 2
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/internal/app/RingtonePickerActivity;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method private addDefaultRingtoneItem(Landroid/widget/ListView;)I
    .registers 3
    .parameter "listView"

    .prologue
    .line 311
    const v0, 0x10403ba

    invoke-direct {p0, p1, v0}, Lcom/android/internal/app/RingtonePickerActivity;->addStaticItem(Landroid/widget/ListView;I)I

    move-result v0

    return v0
.end method

.method private addSilentItem(Landroid/widget/ListView;)I
    .registers 3
    .parameter "listView"

    .prologue
    .line 315
    const v0, 0x10403bc

    invoke-direct {p0, p1, v0}, Lcom/android/internal/app/RingtonePickerActivity;->addStaticItem(Landroid/widget/ListView;I)I

    move-result v0

    return v0
.end method

.method private addStaticItem(Landroid/widget/ListView;I)I
    .registers 7
    .parameter "listView"
    .parameter "textResId"

    .prologue
    .line 302
    invoke-virtual {p0}, Lcom/android/internal/app/RingtonePickerActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x1090012

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 304
    .local v0, textView:Landroid/widget/TextView;
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(I)V

    .line 305
    invoke-virtual {p1, v0}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 306
    iget v1, p0, Lcom/android/internal/app/RingtonePickerActivity;->mStaticItemCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/app/RingtonePickerActivity;->mStaticItemCount:I

    .line 307
    invoke-virtual {p1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    return v1
.end method

.method private createRingtoneManager()V
    .registers 3

    .prologue
    .line 230
    new-instance v0, Landroid/media/RingtoneManager;

    invoke-direct {v0, p0}, Landroid/media/RingtoneManager;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/internal/app/RingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    .line 231
    iget-object v0, p0, Lcom/android/internal/app/RingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    iget-boolean v1, p0, Lcom/android/internal/app/RingtonePickerActivity;->mIncludeDrm:Z

    invoke-virtual {v0, v1}, Landroid/media/RingtoneManager;->setIncludeDrm(Z)V

    .line 232
    iget v0, p0, Lcom/android/internal/app/RingtonePickerActivity;->mRingtoneTypes:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1a

    .line 233
    iget-object v0, p0, Lcom/android/internal/app/RingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    iget v1, p0, Lcom/android/internal/app/RingtonePickerActivity;->mRingtoneTypes:I

    invoke-virtual {v0, v1}, Landroid/media/RingtoneManager;->setType(I)V

    .line 235
    :cond_1a
    return-void
.end method

.method private getListPosition(I)I
    .registers 3
    .parameter "ringtoneManagerPos"

    .prologue
    .line 507
    if-gez p1, :cond_4

    move v0, p1

    .line 509
    :goto_3
    return v0

    :cond_4
    iget v0, p0, Lcom/android/internal/app/RingtonePickerActivity;->mStaticItemCount:I

    add-int/2addr v0, p1

    goto :goto_3
.end method

.method private getRingtoneManagerPosition(I)I
    .registers 3
    .parameter "listPos"

    .prologue
    .line 501
    iget v0, p0, Lcom/android/internal/app/RingtonePickerActivity;->mStaticItemCount:I

    sub-int v0, p1, v0

    return v0
.end method

.method private playRingtone(II)V
    .registers 6
    .parameter "position"
    .parameter "delayMs"

    .prologue
    .line 367
    iget-object v0, p0, Lcom/android/internal/app/RingtonePickerActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 368
    iput p1, p0, Lcom/android/internal/app/RingtonePickerActivity;->mSampleRingtonePos:I

    .line 369
    iget-object v0, p0, Lcom/android/internal/app/RingtonePickerActivity;->mHandler:Landroid/os/Handler;

    int-to-long v1, p2

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 370
    return-void
.end method

.method private stopAnyPlayingRingtone()V
    .registers 2

    .prologue
    .line 491
    iget-object v0, p0, Lcom/android/internal/app/RingtonePickerActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/internal/app/RingtonePickerActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 492
    iget-object v0, p0, Lcom/android/internal/app/RingtonePickerActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->stop()V

    .line 495
    :cond_11
    iget-object v0, p0, Lcom/android/internal/app/RingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    if-eqz v0, :cond_1a

    .line 496
    iget-object v0, p0, Lcom/android/internal/app/RingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    invoke-virtual {v0}, Landroid/media/RingtoneManager;->stopPreviousRingtone()V

    .line 498
    :cond_1a
    return-void
.end method


# virtual methods
.method public getUri(Ljava/lang/String;)Landroid/net/Uri;
    .registers 13
    .parameter "path"

    .prologue
    const/4 v4, 0x0

    const-string v10, "_id"

    const-string v9, "RingtonePickerActivity"

    .line 532
    const-string v8, "content://media/internal/audio/media"

    .line 533
    .local v8, uriString:Ljava/lang/String;
    const/4 v1, 0x0

    .line 534
    .local v1, uri:Landroid/net/Uri;
    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 536
    const-string v0, "RingtonePickerActivity"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "windstar The path is:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    const-string v0, "RingtonePickerActivity"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "windstar The uri is:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    if-eqz v1, :cond_e3

    .line 540
    invoke-virtual {p0}, Lcom/android/internal/app/RingtonePickerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "_id"

    aput-object v10, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_data= \'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 545
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_e3

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_e3

    .line 546
    const-string v0, "RingtonePickerActivity"

    const-string v0, " The path is exist in the DB"

    invoke-static {v9, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 551
    const-string v0, "_id"

    invoke-interface {v6, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 552
    .local v7, j:I
    const-string v0, "RingtonePickerActivity"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The id is:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 555
    const-string v0, "RingtonePickerActivity"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The uri is:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 561
    .end local v6           #cursor:Landroid/database/Cursor;
    .end local v7           #j:I
    :goto_e2
    return-object v0

    .line 560
    :cond_e3
    const-string v0, "RingtonePickerActivity"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "windstar not Found The uri is:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    const-string v0, ""

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_e2
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 9
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v4, 0x0

    const/4 v5, -0x1

    .line 322
    if-ne p2, v5, :cond_37

    const/4 v3, 0x1

    move v0, v3

    .line 325
    .local v0, positiveResult:Z
    :goto_6
    iget-object v3, p0, Lcom/android/internal/app/RingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    invoke-virtual {v3}, Landroid/media/RingtoneManager;->stopPreviousRingtone()V

    .line 327
    if-eqz v0, :cond_4e

    .line 328
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 329
    .local v1, resultIntent:Landroid/content/Intent;
    const/4 v2, 0x0

    .line 331
    .local v2, uri:Landroid/net/Uri;
    iget v3, p0, Lcom/android/internal/app/RingtonePickerActivity;->mClickedPos:I

    iget v4, p0, Lcom/android/internal/app/RingtonePickerActivity;->mDefaultRingtonePos:I

    if-ne v3, v4, :cond_39

    .line 333
    iget-object v2, p0, Lcom/android/internal/app/RingtonePickerActivity;->mUriForDefaultItem:Landroid/net/Uri;

    .line 341
    :goto_1b
    const-string v3, "android.intent.extra.ringtone.PICKED_URI"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 342
    invoke-virtual {p0, v5, v1}, Lcom/android/internal/app/RingtonePickerActivity;->setResult(ILandroid/content/Intent;)V

    .line 347
    .end local v1           #resultIntent:Landroid/content/Intent;
    .end local v2           #uri:Landroid/net/Uri;
    :goto_23
    invoke-virtual {p0}, Lcom/android/internal/app/RingtonePickerActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/android/internal/app/RingtonePickerActivity$3;

    invoke-direct {v4, p0}, Lcom/android/internal/app/RingtonePickerActivity$3;-><init>(Lcom/android/internal/app/RingtonePickerActivity;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 353
    invoke-virtual {p0}, Lcom/android/internal/app/RingtonePickerActivity;->finish()V

    .line 354
    return-void

    .end local v0           #positiveResult:Z
    :cond_37
    move v0, v4

    .line 322
    goto :goto_6

    .line 334
    .restart local v0       #positiveResult:Z
    .restart local v1       #resultIntent:Landroid/content/Intent;
    .restart local v2       #uri:Landroid/net/Uri;
    :cond_39
    iget v3, p0, Lcom/android/internal/app/RingtonePickerActivity;->mClickedPos:I

    iget v4, p0, Lcom/android/internal/app/RingtonePickerActivity;->mSilentPos:I

    if-ne v3, v4, :cond_41

    .line 336
    const/4 v2, 0x0

    goto :goto_1b

    .line 338
    :cond_41
    iget-object v3, p0, Lcom/android/internal/app/RingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    iget v4, p0, Lcom/android/internal/app/RingtonePickerActivity;->mClickedPos:I

    invoke-direct {p0, v4}, Lcom/android/internal/app/RingtonePickerActivity;->getRingtoneManagerPosition(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/media/RingtoneManager;->getRingtoneUri(I)Landroid/net/Uri;

    move-result-object v2

    goto :goto_1b

    .line 344
    .end local v1           #resultIntent:Landroid/content/Intent;
    .end local v2           #uri:Landroid/net/Uri;
    :cond_4e
    invoke-virtual {p0, v4}, Lcom/android/internal/app/RingtonePickerActivity;->setResult(I)V

    goto :goto_23
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x1

    .line 157
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 160
    new-instance v0, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-direct {v0, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 161
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v3, "file"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 162
    iget-object v3, p0, Lcom/android/internal/app/RingtonePickerActivity;->mSDcardReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3, v0}, Lcom/android/internal/app/RingtonePickerActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 164
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    iput-object v3, p0, Lcom/android/internal/app/RingtonePickerActivity;->mHandler:Landroid/os/Handler;

    .line 166
    invoke-virtual {p0}, Lcom/android/internal/app/RingtonePickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 175
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "android.intent.extra.ringtone.SHOW_DEFAULT"

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/internal/app/RingtonePickerActivity;->mHasDefaultItem:Z

    .line 176
    const-string v3, "android.intent.extra.ringtone.DEFAULT_URI"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    iput-object v3, p0, Lcom/android/internal/app/RingtonePickerActivity;->mUriForDefaultItem:Landroid/net/Uri;

    .line 177
    iget-object v3, p0, Lcom/android/internal/app/RingtonePickerActivity;->mUriForDefaultItem:Landroid/net/Uri;

    if-nez v3, :cond_3a

    .line 178
    sget-object v3, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    iput-object v3, p0, Lcom/android/internal/app/RingtonePickerActivity;->mUriForDefaultItem:Landroid/net/Uri;

    .line 182
    :cond_3a
    const-string v3, "android.intent.extra.ringtone.SHOW_SILENT"

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/internal/app/RingtonePickerActivity;->mHasSilentItem:Z

    .line 189
    const-string v3, "android.intent.extra.ringtone.INCLUDE_DRM"

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/internal/app/RingtonePickerActivity;->mIncludeDrm:Z

    .line 193
    const-string v3, "android.intent.extra.ringtone.TYPE"

    const/4 v4, -0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/internal/app/RingtonePickerActivity;->mRingtoneTypes:I

    .line 195
    invoke-direct {p0}, Lcom/android/internal/app/RingtonePickerActivity;->createRingtoneManager()V

    .line 198
    iget-object v3, p0, Lcom/android/internal/app/RingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    invoke-virtual {v3}, Landroid/media/RingtoneManager;->getCursor()Landroid/database/Cursor;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/app/RingtonePickerActivity;->mCursor:Landroid/database/Cursor;

    .line 201
    iget-object v3, p0, Lcom/android/internal/app/RingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    invoke-virtual {v3}, Landroid/media/RingtoneManager;->inferStreamType()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/internal/app/RingtonePickerActivity;->setVolumeControlStream(I)V

    .line 204
    const-string v3, "android.intent.extra.ringtone.EXISTING_URI"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    iput-object v3, p0, Lcom/android/internal/app/RingtonePickerActivity;->mExistingUri:Landroid/net/Uri;

    .line 207
    iget-object v2, p0, Lcom/android/internal/app/AlertActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 208
    .local v2, p:Lcom/android/internal/app/AlertController$AlertParams;
    iget-object v3, p0, Lcom/android/internal/app/RingtonePickerActivity;->mCursor:Landroid/database/Cursor;

    iput-object v3, v2, Lcom/android/internal/app/AlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    .line 209
    iget-object v3, p0, Lcom/android/internal/app/RingtonePickerActivity;->mRingtoneClickListener:Landroid/content/DialogInterface$OnClickListener;

    iput-object v3, v2, Lcom/android/internal/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 210
    const-string/jumbo v3, "title"

    iput-object v3, v2, Lcom/android/internal/app/AlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    .line 211
    iput-boolean v5, v2, Lcom/android/internal/app/AlertController$AlertParams;->mIsSingleChoice:Z

    .line 212
    iput-object p0, v2, Lcom/android/internal/app/AlertController$AlertParams;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 213
    const v3, 0x104000a

    invoke-virtual {p0, v3}, Lcom/android/internal/app/RingtonePickerActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 214
    iput-object p0, v2, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 215
    const/high16 v3, 0x104

    invoke-virtual {p0, v3}, Lcom/android/internal/app/RingtonePickerActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 216
    iput-object p0, v2, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 217
    iput-object p0, v2, Lcom/android/internal/app/AlertController$AlertParams;->mOnPrepareListViewListener:Lcom/android/internal/app/AlertController$AlertParams$OnPrepareListViewListener;

    .line 219
    const-string v3, "android.intent.extra.ringtone.TITLE"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 220
    iget-object v3, v2, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    if-nez v3, :cond_b0

    .line 221
    const v3, 0x10403bd

    invoke-virtual {p0, v3}, Lcom/android/internal/app/RingtonePickerActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 224
    :cond_b0
    invoke-virtual {p0}, Lcom/android/internal/app/RingtonePickerActivity;->setupAlert()V

    .line 225
    return-void
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 459
    iget-object v0, p0, Lcom/android/internal/app/RingtonePickerActivity;->mSDcardReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/internal/app/RingtonePickerActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 460
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onDestroy()V

    .line 461
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 7
    .parameter "parent"
    .parameter "view"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 360
    const/16 v0, 0x12c

    invoke-direct {p0, p3, v0}, Lcom/android/internal/app/RingtonePickerActivity;->playRingtone(II)V

    .line 361
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 7
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 515
    invoke-super {p0, p1, p2}, Lcom/android/internal/app/AlertActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 517
    .local v0, ret:Z
    const/16 v1, 0x13

    if-ne p1, v1, :cond_37

    invoke-virtual {p0}, Lcom/android/internal/app/RingtonePickerActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x1020019

    if-eq v1, v2, :cond_2f

    invoke-virtual {p0}, Lcom/android/internal/app/RingtonePickerActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x102001a

    if-eq v1, v2, :cond_2f

    invoke-virtual {p0}, Lcom/android/internal/app/RingtonePickerActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x102001b

    if-ne v1, v2, :cond_37

    .line 520
    :cond_2f
    iget v1, p0, Lcom/android/internal/app/RingtonePickerActivity;->mSampleRingtonePos:I

    const/16 v2, 0x12c

    invoke-direct {p0, v1, v2}, Lcom/android/internal/app/RingtonePickerActivity;->playRingtone(II)V

    .line 525
    :cond_36
    :goto_36
    return v0

    .line 521
    :cond_37
    const/16 v1, 0x14

    if-ne p1, v1, :cond_36

    iget v1, p0, Lcom/android/internal/app/RingtonePickerActivity;->mSampleRingtonePos:I

    iget-object v2, p0, Lcom/android/internal/app/AlertActivity;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v2}, Lcom/android/internal/app/AlertController;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getCount()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-ne v1, v2, :cond_36

    .line 522
    invoke-direct {p0}, Lcom/android/internal/app/RingtonePickerActivity;->stopAnyPlayingRingtone()V

    goto :goto_36
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .registers 2
    .parameter "parent"

    .prologue
    .line 364
    return-void
.end method

.method protected onPause()V
    .registers 1

    .prologue
    .line 471
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onPause()V

    .line 472
    invoke-direct {p0}, Lcom/android/internal/app/RingtonePickerActivity;->stopAnyPlayingRingtone()V

    .line 487
    return-void
.end method

.method public onPrepareListView(Landroid/widget/ListView;)V
    .registers 6
    .parameter "listView"

    .prologue
    const/4 v3, -0x1

    .line 262
    iget-boolean v1, p0, Lcom/android/internal/app/RingtonePickerActivity;->mHasDefaultItem:Z

    if-eqz v1, :cond_17

    .line 263
    invoke-direct {p0, p1}, Lcom/android/internal/app/RingtonePickerActivity;->addDefaultRingtoneItem(Landroid/widget/ListView;)I

    move-result v1

    iput v1, p0, Lcom/android/internal/app/RingtonePickerActivity;->mDefaultRingtonePos:I

    .line 265
    iget-object v1, p0, Lcom/android/internal/app/RingtonePickerActivity;->mExistingUri:Landroid/net/Uri;

    invoke-static {v1}, Landroid/media/RingtoneManager;->isDefault(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 266
    iget v1, p0, Lcom/android/internal/app/RingtonePickerActivity;->mDefaultRingtonePos:I

    iput v1, p0, Lcom/android/internal/app/RingtonePickerActivity;->mClickedPos:I

    .line 270
    :cond_17
    iget-boolean v1, p0, Lcom/android/internal/app/RingtonePickerActivity;->mHasSilentItem:Z

    if-eqz v1, :cond_29

    .line 271
    invoke-direct {p0, p1}, Lcom/android/internal/app/RingtonePickerActivity;->addSilentItem(Landroid/widget/ListView;)I

    move-result v1

    iput v1, p0, Lcom/android/internal/app/RingtonePickerActivity;->mSilentPos:I

    .line 274
    iget-object v1, p0, Lcom/android/internal/app/RingtonePickerActivity;->mExistingUri:Landroid/net/Uri;

    if-nez v1, :cond_29

    .line 275
    iget v1, p0, Lcom/android/internal/app/RingtonePickerActivity;->mSilentPos:I

    iput v1, p0, Lcom/android/internal/app/RingtonePickerActivity;->mClickedPos:I

    .line 279
    :cond_29
    iget v1, p0, Lcom/android/internal/app/RingtonePickerActivity;->mClickedPos:I

    if-ne v1, v3, :cond_3b

    .line 280
    iget-object v1, p0, Lcom/android/internal/app/RingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    iget-object v2, p0, Lcom/android/internal/app/RingtonePickerActivity;->mExistingUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/media/RingtoneManager;->getRingtonePosition(Landroid/net/Uri;)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/internal/app/RingtonePickerActivity;->getListPosition(I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/app/RingtonePickerActivity;->mClickedPos:I

    .line 283
    :cond_3b
    iget v1, p0, Lcom/android/internal/app/RingtonePickerActivity;->mClickedPos:I

    if-ne v1, v3, :cond_70

    .line 284
    iget-object v1, p0, Lcom/android/internal/app/RingtonePickerActivity;->mExistingUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/app/RingtonePickerActivity;->getUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 285
    .local v0, uri:Landroid/net/Uri;
    iget-object v1, p0, Lcom/android/internal/app/RingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    invoke-virtual {v1, v0}, Landroid/media/RingtoneManager;->getRingtonePosition(Landroid/net/Uri;)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/internal/app/RingtonePickerActivity;->getListPosition(I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/app/RingtonePickerActivity;->mClickedPos:I

    .line 286
    const-string v1, "RingtonePickerActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onPrepareListView : mClickedPos : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/app/RingtonePickerActivity;->mClickedPos:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    .end local v0           #uri:Landroid/net/Uri;
    :cond_70
    iget-object v1, p0, Lcom/android/internal/app/AlertActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iget v2, p0, Lcom/android/internal/app/RingtonePickerActivity;->mClickedPos:I

    iput v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mCheckedItem:I

    .line 291
    return-void
.end method

.method protected onRestart()V
    .registers 5

    .prologue
    .line 242
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onRestart()V

    .line 243
    invoke-direct {p0}, Lcom/android/internal/app/RingtonePickerActivity;->createRingtoneManager()V

    .line 244
    iget-object v1, p0, Lcom/android/internal/app/RingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    invoke-virtual {v1}, Landroid/media/RingtoneManager;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/app/RingtonePickerActivity;->mCursor:Landroid/database/Cursor;

    .line 246
    iget-object v1, p0, Lcom/android/internal/app/RingtonePickerActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_28

    .line 247
    iget-object v1, p0, Lcom/android/internal/app/AlertActivity;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v1}, Lcom/android/internal/app/AlertController;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/CursorAdapter;

    .line 248
    .local v0, adapter:Landroid/widget/CursorAdapter;
    iget-object v1, p0, Lcom/android/internal/app/RingtonePickerActivity;->mCursor:Landroid/database/Cursor;

    invoke-virtual {v0, v1}, Landroid/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 249
    iget-object v1, p0, Lcom/android/internal/app/AlertActivity;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v1}, Lcom/android/internal/app/AlertController;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 251
    .end local v0           #adapter:Landroid/widget/CursorAdapter;
    :cond_28
    iget v1, p0, Lcom/android/internal/app/RingtonePickerActivity;->mClickedPos:I

    const/4 v2, -0x1

    if-le v1, v2, :cond_44

    .line 252
    iget-object v1, p0, Lcom/android/internal/app/AlertActivity;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v1}, Lcom/android/internal/app/AlertController;->getListView()Landroid/widget/ListView;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/app/RingtonePickerActivity;->mClickedPos:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 253
    iget-object v1, p0, Lcom/android/internal/app/AlertActivity;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v1}, Lcom/android/internal/app/AlertController;->getListView()Landroid/widget/ListView;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/app/RingtonePickerActivity;->mClickedPos:I

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setSelection(I)V

    .line 256
    :cond_44
    return-void
.end method

.method protected onStop()V
    .registers 1

    .prologue
    .line 465
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onStop()V

    .line 466
    invoke-direct {p0}, Lcom/android/internal/app/RingtonePickerActivity;->stopAnyPlayingRingtone()V

    .line 467
    return-void
.end method

.method public run()V
    .registers 4

    .prologue
    .line 374
    iget v1, p0, Lcom/android/internal/app/RingtonePickerActivity;->mSampleRingtonePos:I

    iget v2, p0, Lcom/android/internal/app/RingtonePickerActivity;->mSilentPos:I

    if-ne v1, v2, :cond_c

    .line 375
    iget-object v1, p0, Lcom/android/internal/app/RingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    invoke-virtual {v1}, Landroid/media/RingtoneManager;->stopPreviousRingtone()V

    .line 455
    :cond_b
    :goto_b
    return-void

    .line 383
    :cond_c
    iget-object v1, p0, Lcom/android/internal/app/RingtonePickerActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    if-eqz v1, :cond_20

    iget-object v1, p0, Lcom/android/internal/app/RingtonePickerActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    invoke-virtual {v1}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 384
    iget-object v1, p0, Lcom/android/internal/app/RingtonePickerActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    invoke-virtual {v1}, Landroid/media/Ringtone;->stop()V

    .line 398
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/app/RingtonePickerActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    .line 402
    :cond_20
    iget v1, p0, Lcom/android/internal/app/RingtonePickerActivity;->mSampleRingtonePos:I

    iget v2, p0, Lcom/android/internal/app/RingtonePickerActivity;->mDefaultRingtonePos:I

    if-ne v1, v2, :cond_4a

    .line 403
    iget-object v1, p0, Lcom/android/internal/app/RingtonePickerActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    if-nez v1, :cond_3d

    .line 404
    iget-object v1, p0, Lcom/android/internal/app/RingtonePickerActivity;->mUriForDefaultItem:Landroid/net/Uri;

    invoke-static {p0, v1}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/app/RingtonePickerActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    .line 407
    iget-object v1, p0, Lcom/android/internal/app/RingtonePickerActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    iget-object v2, p0, Lcom/android/internal/app/RingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    invoke-virtual {v2}, Landroid/media/RingtoneManager;->inferStreamType()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/media/Ringtone;->setStreamType(I)V

    .line 412
    :cond_3d
    iget-object v0, p0, Lcom/android/internal/app/RingtonePickerActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    .line 420
    .local v0, ringtone:Landroid/media/Ringtone;
    iget-object v1, p0, Lcom/android/internal/app/RingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    invoke-virtual {v1}, Landroid/media/RingtoneManager;->stopPreviousRingtone()V

    .line 439
    :goto_44
    if-eqz v0, :cond_b

    .line 453
    invoke-virtual {v0}, Landroid/media/Ringtone;->play()V

    goto :goto_b

    .line 436
    .end local v0           #ringtone:Landroid/media/Ringtone;
    :cond_4a
    iget-object v1, p0, Lcom/android/internal/app/RingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    iget v2, p0, Lcom/android/internal/app/RingtonePickerActivity;->mSampleRingtonePos:I

    invoke-direct {p0, v2}, Lcom/android/internal/app/RingtonePickerActivity;->getRingtoneManagerPosition(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/media/RingtoneManager;->getRingtone(I)Landroid/media/Ringtone;

    move-result-object v0

    .restart local v0       #ringtone:Landroid/media/Ringtone;
    goto :goto_44
.end method
