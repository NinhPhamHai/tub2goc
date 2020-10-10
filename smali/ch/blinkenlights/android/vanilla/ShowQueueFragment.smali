.class public Lch/blinkenlights/android/vanilla/ShowQueueFragment;
.super Landroid/app/Fragment;
.source "ShowQueueFragment.java"

# interfaces
.implements Lch/blinkenlights/android/vanilla/TimelineCallback;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lch/blinkenlights/android/vanilla/ext/CoordClickListener$Callback;
.implements Lcom/mobeta/android/dslv/DragSortListView$DropListener;
.implements Lcom/mobeta/android/dslv/DragSortListView$RemoveListener;
.implements Lch/blinkenlights/android/vanilla/ui/FancyMenu$Callback;


# instance fields
.field private mIsPopulated:Z

.field private mListAdapter:Lch/blinkenlights/android/vanilla/ShowQueueAdapter;

.field private mListView:Lcom/mobeta/android/dslv/DragSortListView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lch/blinkenlights/android/vanilla/ShowQueueFragment;)Lch/blinkenlights/android/vanilla/ShowQueueAdapter;
    .locals 0

    .line 36
    iget-object p0, p0, Lch/blinkenlights/android/vanilla/ShowQueueFragment;->mListAdapter:Lch/blinkenlights/android/vanilla/ShowQueueAdapter;

    return-object p0
.end method

.method static synthetic access$100(Lch/blinkenlights/android/vanilla/ShowQueueFragment;)Lcom/mobeta/android/dslv/DragSortListView;
    .locals 0

    .line 36
    iget-object p0, p0, Lch/blinkenlights/android/vanilla/ShowQueueFragment;->mListView:Lcom/mobeta/android/dslv/DragSortListView;

    return-object p0
.end method

.method static synthetic access$200(Lch/blinkenlights/android/vanilla/ShowQueueFragment;I)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lch/blinkenlights/android/vanilla/ShowQueueFragment;->scrollToCurrentSong(I)V

    return-void
.end method

.method private playbackService()Lch/blinkenlights/android/vanilla/PlaybackService;
    .locals 1

    .line 244
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lch/blinkenlights/android/vanilla/PlaybackService;->get(Landroid/content/Context;)Lch/blinkenlights/android/vanilla/PlaybackService;

    move-result-object v0

    return-object v0
.end method

.method private refreshSongQueueList(Z)V
    .locals 4

    .line 206
    invoke-direct {p0}, Lch/blinkenlights/android/vanilla/ShowQueueFragment;->playbackService()Lch/blinkenlights/android/vanilla/PlaybackService;

    move-result-object v0

    .line 207
    invoke-virtual {v0}, Lch/blinkenlights/android/vanilla/PlaybackService;->getTimelinePosition()I

    move-result v1

    .line 208
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Lch/blinkenlights/android/vanilla/ShowQueueFragment$1;

    invoke-direct {v3, p0, v0, v1, p1}, Lch/blinkenlights/android/vanilla/ShowQueueFragment$1;-><init>(Lch/blinkenlights/android/vanilla/ShowQueueFragment;Lch/blinkenlights/android/vanilla/PlaybackService;IZ)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    const/4 p1, 0x1

    .line 221
    iput-boolean p1, p0, Lch/blinkenlights/android/vanilla/ShowQueueFragment;->mIsPopulated:Z

    return-void
.end method

.method private scrollToCurrentSong(I)V
    .locals 2

    .line 236
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/ShowQueueFragment;->mListView:Lcom/mobeta/android/dslv/DragSortListView;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    return-void
.end method


# virtual methods
.method public drop(II)V
    .locals 1

    if-eq p1, p2, :cond_0

    .line 180
    invoke-direct {p0}, Lch/blinkenlights/android/vanilla/ShowQueueFragment;->playbackService()Lch/blinkenlights/android/vanilla/PlaybackService;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lch/blinkenlights/android/vanilla/PlaybackService;->moveSongPosition(II)V

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 51
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 53
    sget p3, Lch/blinkenlights/android/vanilla/R$layout;->showqueue_listview:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 54
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    .line 56
    new-instance p3, Lch/blinkenlights/android/vanilla/ShowQueueAdapter;

    sget v0, Lch/blinkenlights/android/vanilla/R$layout;->draggable_row:I

    invoke-direct {p3, p2, v0}, Lch/blinkenlights/android/vanilla/ShowQueueAdapter;-><init>(Landroid/content/Context;I)V

    iput-object p3, p0, Lch/blinkenlights/android/vanilla/ShowQueueFragment;->mListAdapter:Lch/blinkenlights/android/vanilla/ShowQueueAdapter;

    .line 57
    sget p2, Lch/blinkenlights/android/vanilla/R$id;->list:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/mobeta/android/dslv/DragSortListView;

    iput-object p2, p0, Lch/blinkenlights/android/vanilla/ShowQueueFragment;->mListView:Lcom/mobeta/android/dslv/DragSortListView;

    .line 58
    iget-object p2, p0, Lch/blinkenlights/android/vanilla/ShowQueueFragment;->mListView:Lcom/mobeta/android/dslv/DragSortListView;

    iget-object p3, p0, Lch/blinkenlights/android/vanilla/ShowQueueFragment;->mListAdapter:Lch/blinkenlights/android/vanilla/ShowQueueAdapter;

    invoke-virtual {p2, p3}, Lcom/mobeta/android/dslv/DragSortListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 59
    iget-object p2, p0, Lch/blinkenlights/android/vanilla/ShowQueueFragment;->mListView:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-virtual {p2, p0}, Lcom/mobeta/android/dslv/DragSortListView;->setDropListener(Lcom/mobeta/android/dslv/DragSortListView$DropListener;)V

    .line 60
    iget-object p2, p0, Lch/blinkenlights/android/vanilla/ShowQueueFragment;->mListView:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-virtual {p2, p0}, Lcom/mobeta/android/dslv/DragSortListView;->setRemoveListener(Lcom/mobeta/android/dslv/DragSortListView$RemoveListener;)V

    .line 61
    iget-object p2, p0, Lch/blinkenlights/android/vanilla/ShowQueueFragment;->mListView:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-virtual {p2, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 63
    new-instance p2, Lch/blinkenlights/android/vanilla/ext/CoordClickListener;

    invoke-direct {p2, p0}, Lch/blinkenlights/android/vanilla/ext/CoordClickListener;-><init>(Lch/blinkenlights/android/vanilla/ext/CoordClickListener$Callback;)V

    .line 64
    iget-object p3, p0, Lch/blinkenlights/android/vanilla/ShowQueueFragment;->mListView:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-virtual {p2, p3}, Lch/blinkenlights/android/vanilla/ext/CoordClickListener;->registerForOnItemLongClickListener(Landroid/widget/ListView;)V

    .line 66
    invoke-static {p0}, Lch/blinkenlights/android/vanilla/PlaybackService;->addTimelineCallback(Lch/blinkenlights/android/vanilla/TimelineCallback;)V

    return-object p1
.end method

.method public onDestroyView()V
    .locals 0

    .line 72
    invoke-static {p0}, Lch/blinkenlights/android/vanilla/PlaybackService;->removeTimelineCallback(Lch/blinkenlights/android/vanilla/TimelineCallback;)V

    .line 73
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    return-void
.end method

.method public onFancyItemSelected(Lch/blinkenlights/android/vanilla/ui/FancyMenuItem;)Z
    .locals 10

    .line 135
    invoke-virtual {p1}, Lch/blinkenlights/android/vanilla/ui/FancyMenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "position"

    const/4 v2, -0x1

    .line 136
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 138
    invoke-direct {p0}, Lch/blinkenlights/android/vanilla/ShowQueueFragment;->playbackService()Lch/blinkenlights/android/vanilla/PlaybackService;

    move-result-object v1

    .line 139
    invoke-virtual {v1, v6}, Lch/blinkenlights/android/vanilla/PlaybackService;->getSongByQueuePosition(I)Lch/blinkenlights/android/vanilla/Song;

    move-result-object v2

    .line 140
    invoke-virtual {p1}, Lch/blinkenlights/android/vanilla/ui/FancyMenuItem;->getItemId()I

    move-result p1

    const/4 v9, 0x1

    packed-switch p1, :pswitch_data_0

    .line 165
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unhandled menu id received!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 160
    :pswitch_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    check-cast p1, Lch/blinkenlights/android/vanilla/PlaylistDialog$Callback;

    const/4 v1, 0x0

    .line 161
    invoke-static {p1, v0, v1}, Lch/blinkenlights/android/vanilla/PlaylistDialog;->newInstance(Lch/blinkenlights/android/vanilla/PlaylistDialog$Callback;Landroid/content/Intent;Lch/blinkenlights/android/vanilla/LibraryAdapter;)Lch/blinkenlights/android/vanilla/PlaylistDialog;

    move-result-object p1

    .line 162
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "PlaylistDialog"

    invoke-virtual {p1, v0, v1}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 154
    :pswitch_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    iget-wide v0, v2, Lch/blinkenlights/android/vanilla/Song;->id:J

    invoke-static {p1, v0, v1}, Lch/blinkenlights/android/vanilla/TrackDetailsDialog;->show(Landroid/app/FragmentManager;J)V

    goto :goto_0

    .line 157
    :pswitch_2
    invoke-virtual {p0, v6}, Lch/blinkenlights/android/vanilla/ShowQueueFragment;->remove(I)V

    goto :goto_0

    :pswitch_3
    const/4 p1, 0x4

    .line 151
    invoke-virtual {v1, v2, p1}, Lch/blinkenlights/android/vanilla/PlaybackService;->enqueueFromSong(Lch/blinkenlights/android/vanilla/Song;I)V

    goto :goto_0

    :pswitch_4
    const/4 p1, 0x0

    .line 148
    invoke-virtual {v1, v2, p1}, Lch/blinkenlights/android/vanilla/PlaybackService;->enqueueFromSong(Lch/blinkenlights/android/vanilla/Song;I)V

    goto :goto_0

    .line 145
    :pswitch_5
    invoke-virtual {v1, v2, v9}, Lch/blinkenlights/android/vanilla/PlaybackService;->enqueueFromSong(Lch/blinkenlights/android/vanilla/Song;I)V

    goto :goto_0

    :pswitch_6
    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v7, -0x1

    move-object v3, p0

    .line 142
    invoke-virtual/range {v3 .. v8}, Lch/blinkenlights/android/vanilla/ShowQueueFragment;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    :goto_0
    return v9

    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
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

    .line 198
    invoke-direct {p0}, Lch/blinkenlights/android/vanilla/ShowQueueFragment;->playbackService()Lch/blinkenlights/android/vanilla/PlaybackService;

    move-result-object p1

    invoke-virtual {p1, p3}, Lch/blinkenlights/android/vanilla/PlaybackService;->jumpToQueuePosition(I)V

    return-void
.end method

.method public onItemLongClickWithCoords(Landroid/widget/AdapterView;Landroid/view/View;IJFF)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJFF)Z"
        }
    .end annotation

    .line 103
    invoke-direct {p0}, Lch/blinkenlights/android/vanilla/ShowQueueFragment;->playbackService()Lch/blinkenlights/android/vanilla/PlaybackService;

    move-result-object p1

    invoke-virtual {p1, p3}, Lch/blinkenlights/android/vanilla/PlaybackService;->getSongByQueuePosition(I)Lch/blinkenlights/android/vanilla/Song;

    move-result-object p1

    .line 105
    new-instance p4, Landroid/content/Intent;

    invoke-direct {p4}, Landroid/content/Intent;-><init>()V

    .line 106
    iget-wide v0, p1, Lch/blinkenlights/android/vanilla/Song;->id:J

    const-string p5, "id"

    invoke-virtual {p4, p5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string p5, "type"

    const/4 v0, 0x2

    .line 107
    invoke-virtual {p4, p5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p5, "position"

    .line 108
    invoke-virtual {p4, p5, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 110
    new-instance p3, Lch/blinkenlights/android/vanilla/ui/FancyMenu;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p5

    invoke-direct {p3, p5, p0}, Lch/blinkenlights/android/vanilla/ui/FancyMenu;-><init>(Landroid/content/Context;Lch/blinkenlights/android/vanilla/ui/FancyMenu$Callback;)V

    .line 111
    iget-object p1, p1, Lch/blinkenlights/android/vanilla/Song;->title:Ljava/lang/String;

    invoke-virtual {p3, p1}, Lch/blinkenlights/android/vanilla/ui/FancyMenu;->setHeaderTitle(Ljava/lang/String;)V

    .line 113
    sget p1, Lch/blinkenlights/android/vanilla/R$drawable;->menu_play:I

    sget p5, Lch/blinkenlights/android/vanilla/R$string;->play:I

    const/4 v0, 0x0

    const/16 v1, 0x64

    invoke-virtual {p3, v1, v0, p1, p5}, Lch/blinkenlights/android/vanilla/ui/FancyMenu;->add(IIII)Lch/blinkenlights/android/vanilla/ui/FancyMenuItem;

    move-result-object p1

    invoke-virtual {p1, p4}, Lch/blinkenlights/android/vanilla/ui/FancyMenuItem;->setIntent(Landroid/content/Intent;)Lch/blinkenlights/android/vanilla/ui/FancyMenuItem;

    .line 115
    invoke-virtual {p3, v0}, Lch/blinkenlights/android/vanilla/ui/FancyMenu;->addSpacer(I)Lch/blinkenlights/android/vanilla/ui/FancyMenuItem;

    .line 116
    sget p1, Lch/blinkenlights/android/vanilla/R$drawable;->menu_enqueue:I

    sget p5, Lch/blinkenlights/android/vanilla/R$string;->enqueue_current_album:I

    const/16 v1, 0x65

    invoke-virtual {p3, v1, v0, p1, p5}, Lch/blinkenlights/android/vanilla/ui/FancyMenu;->add(IIII)Lch/blinkenlights/android/vanilla/ui/FancyMenuItem;

    move-result-object p1

    invoke-virtual {p1, p4}, Lch/blinkenlights/android/vanilla/ui/FancyMenuItem;->setIntent(Landroid/content/Intent;)Lch/blinkenlights/android/vanilla/ui/FancyMenuItem;

    .line 117
    sget p1, Lch/blinkenlights/android/vanilla/R$drawable;->menu_enqueue:I

    sget p5, Lch/blinkenlights/android/vanilla/R$string;->enqueue_current_artist:I

    const/16 v1, 0x66

    invoke-virtual {p3, v1, v0, p1, p5}, Lch/blinkenlights/android/vanilla/ui/FancyMenu;->add(IIII)Lch/blinkenlights/android/vanilla/ui/FancyMenuItem;

    move-result-object p1

    invoke-virtual {p1, p4}, Lch/blinkenlights/android/vanilla/ui/FancyMenuItem;->setIntent(Landroid/content/Intent;)Lch/blinkenlights/android/vanilla/ui/FancyMenuItem;

    .line 118
    sget p1, Lch/blinkenlights/android/vanilla/R$drawable;->menu_enqueue:I

    sget p5, Lch/blinkenlights/android/vanilla/R$string;->enqueue_current_genre:I

    const/16 v1, 0x67

    invoke-virtual {p3, v1, v0, p1, p5}, Lch/blinkenlights/android/vanilla/ui/FancyMenu;->add(IIII)Lch/blinkenlights/android/vanilla/ui/FancyMenuItem;

    move-result-object p1

    invoke-virtual {p1, p4}, Lch/blinkenlights/android/vanilla/ui/FancyMenuItem;->setIntent(Landroid/content/Intent;)Lch/blinkenlights/android/vanilla/ui/FancyMenuItem;

    .line 119
    sget p1, Lch/blinkenlights/android/vanilla/R$drawable;->menu_add_to_playlist:I

    sget p5, Lch/blinkenlights/android/vanilla/R$string;->add_to_playlist:I

    const/16 v1, 0x6a

    invoke-virtual {p3, v1, v0, p1, p5}, Lch/blinkenlights/android/vanilla/ui/FancyMenu;->add(IIII)Lch/blinkenlights/android/vanilla/ui/FancyMenuItem;

    move-result-object p1

    invoke-virtual {p1, p4}, Lch/blinkenlights/android/vanilla/ui/FancyMenuItem;->setIntent(Landroid/content/Intent;)Lch/blinkenlights/android/vanilla/ui/FancyMenuItem;

    .line 121
    invoke-virtual {p3, v0}, Lch/blinkenlights/android/vanilla/ui/FancyMenu;->addSpacer(I)Lch/blinkenlights/android/vanilla/ui/FancyMenuItem;

    .line 122
    sget p1, Lch/blinkenlights/android/vanilla/R$drawable;->menu_details:I

    sget p5, Lch/blinkenlights/android/vanilla/R$string;->details:I

    const/16 v1, 0x69

    invoke-virtual {p3, v1, v0, p1, p5}, Lch/blinkenlights/android/vanilla/ui/FancyMenu;->add(IIII)Lch/blinkenlights/android/vanilla/ui/FancyMenuItem;

    move-result-object p1

    invoke-virtual {p1, p4}, Lch/blinkenlights/android/vanilla/ui/FancyMenuItem;->setIntent(Landroid/content/Intent;)Lch/blinkenlights/android/vanilla/ui/FancyMenuItem;

    .line 123
    sget p1, Lch/blinkenlights/android/vanilla/R$drawable;->menu_remove:I

    sget p5, Lch/blinkenlights/android/vanilla/R$string;->remove:I

    const/16 v0, 0x68

    const/16 v1, 0x5a

    invoke-virtual {p3, v0, v1, p1, p5}, Lch/blinkenlights/android/vanilla/ui/FancyMenu;->add(IIII)Lch/blinkenlights/android/vanilla/ui/FancyMenuItem;

    move-result-object p1

    invoke-virtual {p1, p4}, Lch/blinkenlights/android/vanilla/ui/FancyMenuItem;->setIntent(Landroid/content/Intent;)Lch/blinkenlights/android/vanilla/ui/FancyMenuItem;

    .line 124
    invoke-virtual {p3, p2, p6, p7}, Lch/blinkenlights/android/vanilla/ui/FancyMenu;->show(Landroid/view/View;FF)V

    const/4 p1, 0x1

    return p1
.end method

.method public onMediaChange()V
    .locals 0

    return-void
.end method

.method public onPositionInfoChanged()V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 78
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 84
    iget-boolean v0, p0, Lch/blinkenlights/android/vanilla/ShowQueueFragment;->mIsPopulated:Z

    if-nez v0, :cond_0

    invoke-static {}, Lch/blinkenlights/android/vanilla/PlaybackService;->hasInstance()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 85
    invoke-direct {p0, v0}, Lch/blinkenlights/android/vanilla/ShowQueueFragment;->refreshSongQueueList(Z)V

    :cond_0
    return-void
.end method

.method public onTimelineChanged()V
    .locals 1

    .line 274
    invoke-static {}, Lch/blinkenlights/android/vanilla/PlaybackService;->hasInstance()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 275
    invoke-direct {p0, v0}, Lch/blinkenlights/android/vanilla/ShowQueueFragment;->refreshSongQueueList(Z)V

    :cond_0
    return-void
.end method

.method public recreate()V
    .locals 0

    return-void
.end method

.method public remove(I)V
    .locals 1

    .line 190
    invoke-direct {p0}, Lch/blinkenlights/android/vanilla/ShowQueueFragment;->playbackService()Lch/blinkenlights/android/vanilla/PlaybackService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lch/blinkenlights/android/vanilla/PlaybackService;->removeSongPosition(I)V

    return-void
.end method

.method public replaceSong(ILch/blinkenlights/android/vanilla/Song;)V
    .locals 0

    return-void
.end method

.method public setSong(JLch/blinkenlights/android/vanilla/Song;)V
    .locals 0

    .line 258
    invoke-static {}, Lch/blinkenlights/android/vanilla/PlaybackService;->hasInstance()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 260
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lch/blinkenlights/android/vanilla/SharedPrefHelper;->getSettings(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    const/4 p2, 0x0

    const-string p3, "queue_enable_scroll_to_song"

    .line 261
    invoke-interface {p1, p3, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    .line 264
    iget-boolean p2, p0, Lch/blinkenlights/android/vanilla/ShowQueueFragment;->mIsPopulated:Z

    if-eqz p2, :cond_0

    if-eqz p1, :cond_1

    .line 265
    :cond_0
    invoke-direct {p0, p1}, Lch/blinkenlights/android/vanilla/ShowQueueFragment;->refreshSongQueueList(Z)V

    :cond_1
    return-void
.end method

.method public setState(JI)V
    .locals 0

    return-void
.end method
