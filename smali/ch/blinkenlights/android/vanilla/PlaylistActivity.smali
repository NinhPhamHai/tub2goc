.class public Lch/blinkenlights/android/vanilla/PlaylistActivity;
.super Landroid/app/Activity;
.source "PlaylistActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lch/blinkenlights/android/vanilla/ext/CoordClickListener$Callback;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lcom/mobeta/android/dslv/DragSortListView$DropListener;
.implements Lcom/mobeta/android/dslv/DragSortListView$RemoveListener;
.implements Lch/blinkenlights/android/vanilla/ui/FancyMenu$Callback;


# static fields
.field private static final MODE_FOR_ACTION:[I


# instance fields
.field private mAdapter:Lch/blinkenlights/android/vanilla/PlaylistAdapter;

.field private mDefaultAction:I

.field private mDeleteButton:Landroid/widget/Button;

.field private mEditButton:Landroid/widget/Button;

.field private mEditing:Z

.field private mLastAction:I

.field private mListView:Lcom/mobeta/android/dslv/DragSortListView;

.field private mLooper:Landroid/os/Looper;

.field private mPlaylistId:J

.field private mPlaylistName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x9

    .line 64
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lch/blinkenlights/android/vanilla/PlaylistActivity;->MODE_FOR_ACTION:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x2
        -0x1
        0x3
        0x6
        -0x1
        -0x1
        -0x1
        0x7
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 51
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    .line 97
    iput v0, p0, Lch/blinkenlights/android/vanilla/PlaylistActivity;->mLastAction:I

    return-void
.end method

.method private performAction(IIJ)V
    .locals 2

    const/4 v0, 0x7

    if-ne p1, v0, :cond_0

    .line 256
    invoke-static {p0}, Lch/blinkenlights/android/vanilla/PlaybackService;->get(Landroid/content/Context;)Lch/blinkenlights/android/vanilla/PlaybackService;

    move-result-object p1

    invoke-virtual {p1}, Lch/blinkenlights/android/vanilla/PlaybackService;->isPlaying()Z

    move-result p1

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 259
    iget p1, p0, Lch/blinkenlights/android/vanilla/PlaylistActivity;->mLastAction:I

    :cond_1
    if-eqz p1, :cond_3

    const/4 v1, 0x1

    if-eq p1, v1, :cond_3

    const/4 v1, 0x3

    if-eq p1, v1, :cond_2

    const/4 v1, 0x4

    if-eq p1, v1, :cond_2

    const/16 p2, 0x8

    if-eq p1, p2, :cond_3

    goto :goto_0

    .line 272
    :cond_2
    iget-wide p3, p0, Lch/blinkenlights/android/vanilla/PlaylistActivity;->mPlaylistId:J

    sget-object v0, Lch/blinkenlights/android/vanilla/Song;->FILLED_PLAYLIST_PROJECTION:[Ljava/lang/String;

    invoke-static {p3, p4, v0}, Lch/blinkenlights/android/vanilla/MediaUtils;->buildPlaylistQuery(J[Ljava/lang/String;)Lch/blinkenlights/android/vanilla/QueryTask;

    move-result-object p3

    .line 273
    sget-object p4, Lch/blinkenlights/android/vanilla/PlaylistActivity;->MODE_FOR_ACTION:[I

    aget p4, p4, p1

    iput p4, p3, Lch/blinkenlights/android/vanilla/QueryTask;->mode:I

    .line 274
    iget-object p4, p0, Lch/blinkenlights/android/vanilla/PlaylistActivity;->mListView:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-virtual {p4}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result p4

    sub-int/2addr p2, p4

    int-to-long v0, p2

    iput-wide v0, p3, Lch/blinkenlights/android/vanilla/QueryTask;->data:J

    .line 275
    invoke-static {p0}, Lch/blinkenlights/android/vanilla/PlaybackService;->get(Landroid/content/Context;)Lch/blinkenlights/android/vanilla/PlaybackService;

    move-result-object p2

    invoke-virtual {p2, p3}, Lch/blinkenlights/android/vanilla/PlaybackService;->addSongs(Lch/blinkenlights/android/vanilla/QueryTask;)V

    goto :goto_0

    .line 265
    :cond_3
    sget-object p2, Lch/blinkenlights/android/vanilla/Song;->FILLED_PROJECTION:[Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, p3, p4, p2, v1}, Lch/blinkenlights/android/vanilla/MediaUtils;->buildQuery(IJ[Ljava/lang/String;Ljava/lang/String;)Lch/blinkenlights/android/vanilla/QueryTask;

    move-result-object p2

    .line 266
    sget-object p3, Lch/blinkenlights/android/vanilla/PlaylistActivity;->MODE_FOR_ACTION:[I

    aget p3, p3, p1

    iput p3, p2, Lch/blinkenlights/android/vanilla/QueryTask;->mode:I

    .line 267
    invoke-static {p0}, Lch/blinkenlights/android/vanilla/PlaybackService;->get(Landroid/content/Context;)Lch/blinkenlights/android/vanilla/PlaybackService;

    move-result-object p3

    invoke-virtual {p3, p2}, Lch/blinkenlights/android/vanilla/PlaybackService;->addSongs(Lch/blinkenlights/android/vanilla/QueryTask;)V

    .line 280
    :goto_0
    iput p1, p0, Lch/blinkenlights/android/vanilla/PlaylistActivity;->mLastAction:I

    return-void
.end method


# virtual methods
.method public drop(II)V
    .locals 1

    .line 322
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/PlaylistActivity;->mAdapter:Lch/blinkenlights/android/vanilla/PlaylistAdapter;

    invoke-virtual {v0, p1, p2}, Lch/blinkenlights/android/vanilla/PlaylistAdapter;->moveItem(II)V

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 298
    iget-wide v0, p0, Lch/blinkenlights/android/vanilla/PlaylistActivity;->mPlaylistId:J

    invoke-static {p0, v0, v1}, Lch/blinkenlights/android/vanilla/Playlist;->deletePlaylist(Landroid/content/Context;J)V

    .line 299
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 301
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 179
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 180
    sget v0, Lch/blinkenlights/android/vanilla/R$id;->edit:I

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    .line 181
    iget-boolean p1, p0, Lch/blinkenlights/android/vanilla/PlaylistActivity;->mEditing:Z

    xor-int/2addr p1, v1

    invoke-virtual {p0, p1}, Lch/blinkenlights/android/vanilla/PlaylistActivity;->setEditing(Z)V

    goto :goto_0

    .line 182
    :cond_0
    sget v0, Lch/blinkenlights/android/vanilla/R$id;->delete:I

    if-ne p1, v0, :cond_1

    .line 183
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 184
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lch/blinkenlights/android/vanilla/R$string;->delete_playlist:I

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lch/blinkenlights/android/vanilla/PlaylistActivity;->mPlaylistName:Ljava/lang/String;

    aput-object v4, v1, v3

    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 185
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 186
    sget v0, Lch/blinkenlights/android/vanilla/R$string;->delete:I

    invoke-virtual {p1, v0, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 v0, 0x1040000

    .line 187
    invoke-virtual {p1, v0, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 188
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :cond_1
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 105
    sget v0, Lch/blinkenlights/android/vanilla/R$style;->BackActionBar:I

    invoke-static {p0, v0}, Lch/blinkenlights/android/vanilla/ThemeHelper;->setTheme(Landroid/content/Context;I)V

    .line 106
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 108
    new-instance p1, Landroid/os/HandlerThread;

    const-class v0, Lch/blinkenlights/android/vanilla/PlaylistActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 111
    sget v0, Lch/blinkenlights/android/vanilla/R$layout;->playlist_activity:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 113
    new-instance v0, Lch/blinkenlights/android/vanilla/ext/CoordClickListener;

    invoke-direct {v0, p0}, Lch/blinkenlights/android/vanilla/ext/CoordClickListener;-><init>(Lch/blinkenlights/android/vanilla/ext/CoordClickListener$Callback;)V

    .line 114
    sget v1, Lch/blinkenlights/android/vanilla/R$id;->list:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/mobeta/android/dslv/DragSortListView;

    .line 115
    invoke-virtual {v0, v1}, Lch/blinkenlights/android/vanilla/ext/CoordClickListener;->registerForOnItemLongClickListener(Landroid/widget/ListView;)V

    .line 116
    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 117
    invoke-virtual {v1, p0}, Lcom/mobeta/android/dslv/DragSortListView;->setDropListener(Lcom/mobeta/android/dslv/DragSortListView$DropListener;)V

    .line 118
    invoke-virtual {v1, p0}, Lcom/mobeta/android/dslv/DragSortListView;->setRemoveListener(Lcom/mobeta/android/dslv/DragSortListView$RemoveListener;)V

    .line 119
    iput-object v1, p0, Lch/blinkenlights/android/vanilla/PlaylistActivity;->mListView:Lcom/mobeta/android/dslv/DragSortListView;

    .line 121
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v2, Lch/blinkenlights/android/vanilla/R$layout;->playlist_buttons:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 122
    sget v2, Lch/blinkenlights/android/vanilla/R$id;->edit:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lch/blinkenlights/android/vanilla/PlaylistActivity;->mEditButton:Landroid/widget/Button;

    .line 123
    iget-object v2, p0, Lch/blinkenlights/android/vanilla/PlaylistActivity;->mEditButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    sget v2, Lch/blinkenlights/android/vanilla/R$id;->delete:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lch/blinkenlights/android/vanilla/PlaylistActivity;->mDeleteButton:Landroid/widget/Button;

    .line 125
    iget-object v2, p0, Lch/blinkenlights/android/vanilla/PlaylistActivity;->mDeleteButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v2, 0x0

    .line 126
    invoke-virtual {v1, v0, v3, v2}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 127
    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    iput-object p1, p0, Lch/blinkenlights/android/vanilla/PlaylistActivity;->mLooper:Landroid/os/Looper;

    .line 128
    new-instance p1, Lch/blinkenlights/android/vanilla/PlaylistAdapter;

    iget-object v0, p0, Lch/blinkenlights/android/vanilla/PlaylistActivity;->mLooper:Landroid/os/Looper;

    invoke-direct {p1, p0, v0}, Lch/blinkenlights/android/vanilla/PlaylistAdapter;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    iput-object p1, p0, Lch/blinkenlights/android/vanilla/PlaylistActivity;->mAdapter:Lch/blinkenlights/android/vanilla/PlaylistAdapter;

    .line 129
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/PlaylistActivity;->mAdapter:Lch/blinkenlights/android/vanilla/PlaylistAdapter;

    invoke-virtual {v1, p1}, Lcom/mobeta/android/dslv/DragSortListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 131
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lch/blinkenlights/android/vanilla/PlaylistActivity;->onNewIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 145
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/PlaylistActivity;->mLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 146
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onFancyItemSelected(Lch/blinkenlights/android/vanilla/ui/FancyMenuItem;)Z
    .locals 6

    .line 229
    invoke-virtual {p1}, Lch/blinkenlights/android/vanilla/ui/FancyMenuItem;->getItemId()I

    move-result v0

    .line 230
    invoke-virtual {p1}, Lch/blinkenlights/android/vanilla/ui/FancyMenuItem;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const/4 v1, -0x1

    const-string v2, "position"

    .line 231
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-ne v0, v1, :cond_0

    .line 234
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/PlaylistActivity;->mAdapter:Lch/blinkenlights/android/vanilla/PlaylistAdapter;

    iget-object v0, p0, Lch/blinkenlights/android/vanilla/PlaylistActivity;->mListView:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    sub-int/2addr v2, v0

    invoke-virtual {p1, v2}, Lch/blinkenlights/android/vanilla/PlaylistAdapter;->removeItem(I)V

    goto :goto_0

    :cond_0
    const/4 v1, -0x2

    const-wide/16 v3, -0x1

    const-string v5, "audioId"

    if-ne v0, v1, :cond_1

    .line 236
    invoke-virtual {p1, v5, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 237
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    invoke-static {p1, v0, v1}, Lch/blinkenlights/android/vanilla/TrackDetailsDialog;->show(Landroid/app/FragmentManager;J)V

    goto :goto_0

    .line 239
    :cond_1
    invoke-virtual {p1, v5, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    invoke-direct {p0, v0, v2, v3, v4}, Lch/blinkenlights/android/vanilla/PlaylistActivity;->performAction(IIJ)V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 286
    iget-boolean p1, p0, Lch/blinkenlights/android/vanilla/PlaylistActivity;->mEditing:Z

    if-nez p1, :cond_0

    iget p1, p0, Lch/blinkenlights/android/vanilla/PlaylistActivity;->mDefaultAction:I

    const/4 p4, 0x5

    if-eq p1, p4, :cond_0

    .line 288
    check-cast p2, Landroid/view/ViewGroup;

    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 289
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lch/blinkenlights/android/vanilla/ViewHolder;

    .line 290
    iget p2, p0, Lch/blinkenlights/android/vanilla/PlaylistActivity;->mDefaultAction:I

    iget-wide p4, p1, Lch/blinkenlights/android/vanilla/ViewHolder;->id:J

    invoke-direct {p0, p2, p3, p4, p5}, Lch/blinkenlights/android/vanilla/PlaylistActivity;->performAction(IIJ)V

    :cond_0
    return-void
.end method

.method public onItemLongClickWithCoords(Landroid/widget/AdapterView;Landroid/view/View;IJFF)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJFF)Z"
        }
    .end annotation

    .line 202
    sget p1, Lch/blinkenlights/android/vanilla/R$id;->text:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lch/blinkenlights/android/vanilla/ViewHolder;

    .line 203
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "id"

    .line 204
    invoke-virtual {v0, v1, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string p4, "position"

    .line 205
    invoke-virtual {v0, p4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 206
    iget-wide p3, p1, Lch/blinkenlights/android/vanilla/ViewHolder;->id:J

    const-string p5, "audioId"

    invoke-virtual {v0, p5, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 208
    new-instance p3, Lch/blinkenlights/android/vanilla/ui/FancyMenu;

    invoke-direct {p3, p0, p0}, Lch/blinkenlights/android/vanilla/ui/FancyMenu;-><init>(Landroid/content/Context;Lch/blinkenlights/android/vanilla/ui/FancyMenu$Callback;)V

    .line 209
    iget-object p1, p1, Lch/blinkenlights/android/vanilla/ViewHolder;->title:Ljava/lang/String;

    invoke-virtual {p3, p1}, Lch/blinkenlights/android/vanilla/ui/FancyMenu;->setHeaderTitle(Ljava/lang/String;)V

    .line 211
    sget p1, Lch/blinkenlights/android/vanilla/R$drawable;->menu_play:I

    sget p4, Lch/blinkenlights/android/vanilla/R$string;->play:I

    const/4 p5, 0x0

    invoke-virtual {p3, p5, p5, p1, p4}, Lch/blinkenlights/android/vanilla/ui/FancyMenu;->add(IIII)Lch/blinkenlights/android/vanilla/ui/FancyMenuItem;

    move-result-object p1

    invoke-virtual {p1, v0}, Lch/blinkenlights/android/vanilla/ui/FancyMenuItem;->setIntent(Landroid/content/Intent;)Lch/blinkenlights/android/vanilla/ui/FancyMenuItem;

    .line 212
    sget p1, Lch/blinkenlights/android/vanilla/R$drawable;->menu_play_all:I

    sget p4, Lch/blinkenlights/android/vanilla/R$string;->play_all:I

    const/4 v1, 0x3

    invoke-virtual {p3, v1, p5, p1, p4}, Lch/blinkenlights/android/vanilla/ui/FancyMenu;->add(IIII)Lch/blinkenlights/android/vanilla/ui/FancyMenuItem;

    move-result-object p1

    invoke-virtual {p1, v0}, Lch/blinkenlights/android/vanilla/ui/FancyMenuItem;->setIntent(Landroid/content/Intent;)Lch/blinkenlights/android/vanilla/ui/FancyMenuItem;

    .line 214
    invoke-virtual {p3, p5}, Lch/blinkenlights/android/vanilla/ui/FancyMenu;->addSpacer(I)Lch/blinkenlights/android/vanilla/ui/FancyMenuItem;

    .line 215
    sget p1, Lch/blinkenlights/android/vanilla/R$drawable;->menu_enqueue_as_next:I

    sget p4, Lch/blinkenlights/android/vanilla/R$string;->enqueue_as_next:I

    const/16 v1, 0x8

    invoke-virtual {p3, v1, p5, p1, p4}, Lch/blinkenlights/android/vanilla/ui/FancyMenu;->add(IIII)Lch/blinkenlights/android/vanilla/ui/FancyMenuItem;

    move-result-object p1

    invoke-virtual {p1, v0}, Lch/blinkenlights/android/vanilla/ui/FancyMenuItem;->setIntent(Landroid/content/Intent;)Lch/blinkenlights/android/vanilla/ui/FancyMenuItem;

    .line 216
    sget p1, Lch/blinkenlights/android/vanilla/R$drawable;->menu_enqueue:I

    sget p4, Lch/blinkenlights/android/vanilla/R$string;->enqueue:I

    const/4 v1, 0x1

    invoke-virtual {p3, v1, p5, p1, p4}, Lch/blinkenlights/android/vanilla/ui/FancyMenu;->add(IIII)Lch/blinkenlights/android/vanilla/ui/FancyMenuItem;

    move-result-object p1

    invoke-virtual {p1, v0}, Lch/blinkenlights/android/vanilla/ui/FancyMenuItem;->setIntent(Landroid/content/Intent;)Lch/blinkenlights/android/vanilla/ui/FancyMenuItem;

    .line 217
    sget p1, Lch/blinkenlights/android/vanilla/R$drawable;->menu_enqueue:I

    sget p4, Lch/blinkenlights/android/vanilla/R$string;->enqueue_all:I

    const/4 v2, 0x4

    invoke-virtual {p3, v2, p5, p1, p4}, Lch/blinkenlights/android/vanilla/ui/FancyMenu;->add(IIII)Lch/blinkenlights/android/vanilla/ui/FancyMenuItem;

    move-result-object p1

    invoke-virtual {p1, v0}, Lch/blinkenlights/android/vanilla/ui/FancyMenuItem;->setIntent(Landroid/content/Intent;)Lch/blinkenlights/android/vanilla/ui/FancyMenuItem;

    .line 219
    invoke-virtual {p3, p5}, Lch/blinkenlights/android/vanilla/ui/FancyMenu;->addSpacer(I)Lch/blinkenlights/android/vanilla/ui/FancyMenuItem;

    .line 220
    sget p1, Lch/blinkenlights/android/vanilla/R$drawable;->menu_details:I

    sget p4, Lch/blinkenlights/android/vanilla/R$string;->details:I

    const/4 v2, -0x2

    invoke-virtual {p3, v2, p5, p1, p4}, Lch/blinkenlights/android/vanilla/ui/FancyMenu;->add(IIII)Lch/blinkenlights/android/vanilla/ui/FancyMenuItem;

    move-result-object p1

    invoke-virtual {p1, v0}, Lch/blinkenlights/android/vanilla/ui/FancyMenuItem;->setIntent(Landroid/content/Intent;)Lch/blinkenlights/android/vanilla/ui/FancyMenuItem;

    .line 221
    sget p1, Lch/blinkenlights/android/vanilla/R$drawable;->menu_remove:I

    sget p4, Lch/blinkenlights/android/vanilla/R$string;->remove:I

    const/4 v2, -0x1

    invoke-virtual {p3, v2, p5, p1, p4}, Lch/blinkenlights/android/vanilla/ui/FancyMenu;->add(IIII)Lch/blinkenlights/android/vanilla/ui/FancyMenuItem;

    move-result-object p1

    invoke-virtual {p1, v0}, Lch/blinkenlights/android/vanilla/ui/FancyMenuItem;->setIntent(Landroid/content/Intent;)Lch/blinkenlights/android/vanilla/ui/FancyMenuItem;

    .line 222
    invoke-virtual {p3, p2, p6, p7}, Lch/blinkenlights/android/vanilla/ui/FancyMenu;->show(Landroid/view/View;FF)V

    return v1
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 3

    const-string v0, "playlist"

    const-wide/16 v1, 0x0

    .line 152
    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    const-string v2, "title"

    .line 153
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 154
    iget-object v2, p0, Lch/blinkenlights/android/vanilla/PlaylistActivity;->mAdapter:Lch/blinkenlights/android/vanilla/PlaylistAdapter;

    invoke-virtual {v2, v0, v1}, Lch/blinkenlights/android/vanilla/PlaylistAdapter;->setPlaylistId(J)V

    .line 155
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 156
    iput-wide v0, p0, Lch/blinkenlights/android/vanilla/PlaylistActivity;->mPlaylistId:J

    .line 157
    iput-object p1, p0, Lch/blinkenlights/android/vanilla/PlaylistActivity;->mPlaylistName:Ljava/lang/String;

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 307
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 308
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const/4 p1, 0x1

    return p1

    .line 311
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onStart()V
    .locals 3

    .line 137
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 138
    invoke-static {p0}, Lch/blinkenlights/android/vanilla/SharedPrefHelper;->getSettings(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "default_playlist_action"

    const-string v2, "0"

    .line 139
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lch/blinkenlights/android/vanilla/PlaylistActivity;->mDefaultAction:I

    return-void
.end method

.method public remove(I)V
    .locals 1

    .line 331
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/PlaylistActivity;->mAdapter:Lch/blinkenlights/android/vanilla/PlaylistAdapter;

    invoke-virtual {v0, p1}, Lch/blinkenlights/android/vanilla/PlaylistAdapter;->removeItem(I)V

    return-void
.end method

.method public setEditing(Z)V
    .locals 2

    .line 168
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/PlaylistActivity;->mListView:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-virtual {v0, p1}, Lcom/mobeta/android/dslv/DragSortListView;->setDragEnabled(Z)V

    .line 169
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/PlaylistActivity;->mAdapter:Lch/blinkenlights/android/vanilla/PlaylistAdapter;

    invoke-virtual {v0, p1}, Lch/blinkenlights/android/vanilla/PlaylistAdapter;->setEditable(Z)V

    if-eqz p1, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 171
    :goto_0
    iget-object v1, p0, Lch/blinkenlights/android/vanilla/PlaylistActivity;->mDeleteButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 172
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/PlaylistActivity;->mEditButton:Landroid/widget/Button;

    if-eqz p1, :cond_1

    sget v1, Lch/blinkenlights/android/vanilla/R$string;->done:I

    goto :goto_1

    :cond_1
    sget v1, Lch/blinkenlights/android/vanilla/R$string;->edit:I

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 173
    iput-boolean p1, p0, Lch/blinkenlights/android/vanilla/PlaylistActivity;->mEditing:Z

    return-void
.end method
