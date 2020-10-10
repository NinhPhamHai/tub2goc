.class public final synthetic Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/-$$Lambda$MissionAdapter$ViewHolderItem$Z9rOKWwb7LT5vbAPE0zYspQXjPQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# instance fields
.field private final synthetic f$0:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter$ViewHolderItem;


# direct methods
.method public synthetic constructor <init>(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter$ViewHolderItem;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/-$$Lambda$MissionAdapter$ViewHolderItem$Z9rOKWwb7LT5vbAPE0zYspQXjPQ;->f$0:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter$ViewHolderItem;

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/-$$Lambda$MissionAdapter$ViewHolderItem$Z9rOKWwb7LT5vbAPE0zYspQXjPQ;->f$0:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter$ViewHolderItem;

    invoke-virtual {v0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter$ViewHolderItem;->lambda$buildPopup$3$MissionAdapter$ViewHolderItem(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method
