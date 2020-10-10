.class public abstract Lcom/nononsenseapps/filepicker/AbstractFilePickerActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "AbstractFilePickerActivity.java"

# interfaces
.implements Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment$OnFilePickedListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/appcompat/app/AppCompatActivity;",
        "Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment$OnFilePickedListener;"
    }
.end annotation


# instance fields
.field protected allowCreateDir:Z

.field private allowExistingFile:Z

.field protected allowMultiple:Z

.field protected mode:I

.field protected singleClick:Z

.field protected startPath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 54
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x0

    .line 69
    iput-object v0, p0, Lcom/nononsenseapps/filepicker/AbstractFilePickerActivity;->startPath:Ljava/lang/String;

    const/4 v0, 0x0

    .line 70
    iput v0, p0, Lcom/nononsenseapps/filepicker/AbstractFilePickerActivity;->mode:I

    .line 71
    iput-boolean v0, p0, Lcom/nononsenseapps/filepicker/AbstractFilePickerActivity;->allowCreateDir:Z

    .line 72
    iput-boolean v0, p0, Lcom/nononsenseapps/filepicker/AbstractFilePickerActivity;->allowMultiple:Z

    const/4 v1, 0x1

    .line 73
    iput-boolean v1, p0, Lcom/nononsenseapps/filepicker/AbstractFilePickerActivity;->allowExistingFile:Z

    .line 74
    iput-boolean v0, p0, Lcom/nononsenseapps/filepicker/AbstractFilePickerActivity;->singleClick:Z

    return-void
.end method


# virtual methods
.method protected abstract getFragment(Ljava/lang/String;IZZZZ)Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IZZZZ)",
            "Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment<",
            "TT;>;"
        }
    .end annotation
.end method

.method public onCancelled()V
    .locals 1

    const/4 v0, 0x0

    .line 164
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    .line 165
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 78
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 80
    sget p1, Lcom/nononsenseapps/filepicker/R$layout;->nnf_activity_filepicker:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 82
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "nononsense.intent.START_PATH"

    .line 84
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nononsenseapps/filepicker/AbstractFilePickerActivity;->startPath:Ljava/lang/String;

    .line 85
    iget v0, p0, Lcom/nononsenseapps/filepicker/AbstractFilePickerActivity;->mode:I

    const-string v1, "nononsense.intent.MODE"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/nononsenseapps/filepicker/AbstractFilePickerActivity;->mode:I

    .line 86
    iget-boolean v0, p0, Lcom/nononsenseapps/filepicker/AbstractFilePickerActivity;->allowCreateDir:Z

    const-string v1, "nononsense.intent.ALLOW_CREATE_DIR"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nononsenseapps/filepicker/AbstractFilePickerActivity;->allowCreateDir:Z

    .line 87
    iget-boolean v0, p0, Lcom/nononsenseapps/filepicker/AbstractFilePickerActivity;->allowMultiple:Z

    const-string v1, "android.intent.extra.ALLOW_MULTIPLE"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nononsenseapps/filepicker/AbstractFilePickerActivity;->allowMultiple:Z

    .line 88
    iget-boolean v0, p0, Lcom/nononsenseapps/filepicker/AbstractFilePickerActivity;->allowExistingFile:Z

    const-string v1, "android.intent.extra.ALLOW_EXISTING_FILE"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nononsenseapps/filepicker/AbstractFilePickerActivity;->allowExistingFile:Z

    .line 89
    iget-boolean v0, p0, Lcom/nononsenseapps/filepicker/AbstractFilePickerActivity;->singleClick:Z

    const-string v1, "nononsense.intent.SINGLE_CLICK"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/nononsenseapps/filepicker/AbstractFilePickerActivity;->singleClick:Z

    :cond_0
    const/4 p1, 0x0

    .line 93
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    return-void
.end method

.method public onFilePicked(Landroid/net/Uri;)V
    .locals 1

    .line 125
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 126
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/4 p1, -0x1

    .line 127
    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 128
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onFilesPicked(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .line 134
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.extra.ALLOW_MULTIPLE"

    const/4 v2, 0x1

    .line 135
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 138
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 139
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    .line 140
    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string v2, "nononsense.intent.PATHS"

    .line 142
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 145
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_3

    const/4 v1, 0x0

    .line 147
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    if-nez v1, :cond_1

    .line 149
    new-instance v1, Landroid/content/ClipData;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    new-instance v4, Landroid/content/ClipData$Item;

    invoke-direct {v4, v2}, Landroid/content/ClipData$Item;-><init>(Landroid/net/Uri;)V

    const-string v2, "Paths"

    invoke-direct {v1, v2, v3, v4}, Landroid/content/ClipData;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;Landroid/content/ClipData$Item;)V

    goto :goto_1

    .line 152
    :cond_1
    new-instance v3, Landroid/content/ClipData$Item;

    invoke-direct {v3, v2}, Landroid/content/ClipData$Item;-><init>(Landroid/net/Uri;)V

    invoke-virtual {v1, v3}, Landroid/content/ClipData;->addItem(Landroid/content/ClipData$Item;)V

    goto :goto_1

    .line 155
    :cond_2
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    :cond_3
    const/4 p1, -0x1

    .line 158
    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 159
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method protected onResume()V
    .locals 10

    .line 98
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    .line 100
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "filepicker_fragment"

    .line 101
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v2

    if-nez v2, :cond_0

    .line 104
    iget-object v4, p0, Lcom/nononsenseapps/filepicker/AbstractFilePickerActivity;->startPath:Ljava/lang/String;

    iget v5, p0, Lcom/nononsenseapps/filepicker/AbstractFilePickerActivity;->mode:I

    iget-boolean v6, p0, Lcom/nononsenseapps/filepicker/AbstractFilePickerActivity;->allowMultiple:Z

    iget-boolean v7, p0, Lcom/nononsenseapps/filepicker/AbstractFilePickerActivity;->allowCreateDir:Z

    iget-boolean v8, p0, Lcom/nononsenseapps/filepicker/AbstractFilePickerActivity;->allowExistingFile:Z

    iget-boolean v9, p0, Lcom/nononsenseapps/filepicker/AbstractFilePickerActivity;->singleClick:Z

    move-object v3, p0

    invoke-virtual/range {v3 .. v9}, Lcom/nononsenseapps/filepicker/AbstractFilePickerActivity;->getFragment(Ljava/lang/String;IZZZZ)Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment;

    move-result-object v2

    :cond_0
    if-eqz v2, :cond_1

    .line 108
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    sget v3, Lcom/nononsenseapps/filepicker/R$id;->fragment:I

    invoke-virtual {v0, v3, v2, v1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    :cond_1
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "WORKAROUND_FOR_BUG_19917_KEY"

    const-string v1, "WORKAROUND_FOR_BUG_19917_VALUE"

    .line 119
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method
