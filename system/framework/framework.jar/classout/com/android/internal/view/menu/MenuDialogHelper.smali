.class public Lcom/android/internal/view/menu/MenuDialogHelper;
.super Ljava/lang/Object;
.source "MenuDialogHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private mAdapter:Landroid/widget/ListAdapter;

.field mBroadcastIntentFilter:Landroid/content/IntentFilter;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mDialog:Landroid/app/AlertDialog;

.field private mMenu:Lcom/android/internal/view/menu/MenuBuilder;


# direct methods
.method public constructor <init>(Lcom/android/internal/view/menu/MenuBuilder;)V
    .registers 4
    .parameter "menu"

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/view/menu/MenuDialogHelper;->mBroadcastIntentFilter:Landroid/content/IntentFilter;

    .line 160
    new-instance v0, Lcom/android/internal/view/menu/MenuDialogHelper$1;

    invoke-direct {v0, p0}, Lcom/android/internal/view/menu/MenuDialogHelper$1;-><init>(Lcom/android/internal/view/menu/MenuDialogHelper;)V

    iput-object v0, p0, Lcom/android/internal/view/menu/MenuDialogHelper;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 47
    iput-object p1, p0, Lcom/android/internal/view/menu/MenuDialogHelper;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    .line 48
    return-void
.end method


# virtual methods
.method public dismiss()V
    .registers 3

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuDialogHelper;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_9

    .line 145
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuDialogHelper;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 148
    :cond_9
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuDialogHelper;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/view/menu/MenuDialogHelper;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 150
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuDialogHelper;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    iget-object v1, p0, Lcom/android/internal/view/menu/MenuDialogHelper;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p2}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/internal/view/menu/MenuItemImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/internal/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    .line 154
    return-void
.end method

.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 9
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v4, 0x1

    .line 103
    const/16 v3, 0x52

    if-eq p2, v3, :cond_8

    const/4 v3, 0x4

    if-ne p2, v3, :cond_5d

    .line 104
    :cond_8
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_2d

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    if-nez v3, :cond_2d

    .line 106
    iget-object v3, p0, Lcom/android/internal/view/menu/MenuDialogHelper;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 107
    .local v2, win:Landroid/view/Window;
    if-eqz v2, :cond_5d

    .line 108
    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 109
    .local v0, decor:Landroid/view/View;
    if-eqz v0, :cond_5d

    .line 110
    invoke-virtual {v0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v1

    .line 111
    .local v1, ds:Landroid/view/KeyEvent$DispatcherState;
    if-eqz v1, :cond_5d

    .line 112
    invoke-virtual {v1, p3, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    move v3, v4

    .line 134
    .end local v0           #decor:Landroid/view/View;
    .end local v1           #ds:Landroid/view/KeyEvent$DispatcherState;
    .end local v2           #win:Landroid/view/Window;
    :goto_2c
    return v3

    .line 117
    :cond_2d
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-ne v3, v4, :cond_5d

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v3

    if-nez v3, :cond_5d

    .line 118
    iget-object v3, p0, Lcom/android/internal/view/menu/MenuDialogHelper;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 119
    .restart local v2       #win:Landroid/view/Window;
    if-eqz v2, :cond_5d

    .line 120
    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 121
    .restart local v0       #decor:Landroid/view/View;
    if-eqz v0, :cond_5d

    .line 122
    invoke-virtual {v0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v1

    .line 123
    .restart local v1       #ds:Landroid/view/KeyEvent$DispatcherState;
    if-eqz v1, :cond_5d

    invoke-virtual {v1, p3}, Landroid/view/KeyEvent$DispatcherState;->isTracking(Landroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_5d

    .line 124
    iget-object v3, p0, Lcom/android/internal/view/menu/MenuDialogHelper;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v3, v4}, Lcom/android/internal/view/menu/MenuBuilder;->close(Z)V

    .line 125
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    move v3, v4

    .line 126
    goto :goto_2c

    .line 134
    .end local v0           #decor:Landroid/view/View;
    .end local v1           #ds:Landroid/view/KeyEvent$DispatcherState;
    .end local v2           #win:Landroid/view/Window;
    :cond_5d
    iget-object v3, p0, Lcom/android/internal/view/menu/MenuDialogHelper;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    const/4 v4, 0x0

    invoke-virtual {v3, p2, p3, v4}, Lcom/android/internal/view/menu/MenuBuilder;->performShortcut(ILandroid/view/KeyEvent;I)Z

    move-result v3

    goto :goto_2c
.end method

.method public show(Landroid/os/IBinder;)V
    .registers 9
    .parameter "windowToken"

    .prologue
    .line 57
    iget-object v3, p0, Lcom/android/internal/view/menu/MenuDialogHelper;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    .line 60
    .local v3, menu:Lcom/android/internal/view/menu/MenuBuilder;
    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/android/internal/view/menu/MenuBuilder;->getMenuAdapter(I)Lcom/android/internal/view/menu/MenuBuilder$MenuAdapter;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/view/menu/MenuDialogHelper;->mAdapter:Landroid/widget/ListAdapter;

    .line 63
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {v3}, Lcom/android/internal/view/menu/MenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v5, p0, Lcom/android/internal/view/menu/MenuDialogHelper;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {v4, v5, p0}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 67
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v3}, Lcom/android/internal/view/menu/MenuBuilder;->getHeaderView()Landroid/view/View;

    move-result-object v1

    .line 68
    .local v1, headerView:Landroid/view/View;
    if-eqz v1, :cond_58

    .line 70
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCustomTitle(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 81
    :goto_21
    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 85
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setRecycleOnMeasureEnabled(Z)Landroid/app/AlertDialog$Builder;

    .line 88
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/view/menu/MenuDialogHelper;->mDialog:Landroid/app/AlertDialog;

    .line 90
    iget-object v4, p0, Lcom/android/internal/view/menu/MenuDialogHelper;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 91
    .local v2, lp:Landroid/view/WindowManager$LayoutParams;
    const/16 v4, 0x3eb

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 92
    if-eqz p1, :cond_40

    .line 93
    iput-object p1, v2, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 95
    :cond_40
    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v5, 0x2

    or-int/2addr v4, v5

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 97
    invoke-virtual {v3}, Lcom/android/internal/view/menu/MenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/view/menu/MenuDialogHelper;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v6, p0, Lcom/android/internal/view/menu/MenuDialogHelper;->mBroadcastIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 99
    iget-object v4, p0, Lcom/android/internal/view/menu/MenuDialogHelper;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 100
    return-void

    .line 73
    .end local v2           #lp:Landroid/view/WindowManager$LayoutParams;
    :cond_58
    invoke-virtual {v3}, Lcom/android/internal/view/menu/MenuBuilder;->getHeaderIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v3}, Lcom/android/internal/view/menu/MenuBuilder;->getHeaderTitle()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 76
    invoke-virtual {v3}, Lcom/android/internal/view/menu/MenuBuilder;->getHeaderTitleId()I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setContextMenuTitleId(I)Landroid/app/AlertDialog$Builder;

    goto :goto_21
.end method
