.class Lcom/floatingtunes/youtubeplayer/topmusic/country/CountriesAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "CountriesAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/floatingtunes/youtubeplayer/topmusic/country/CountriesAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field private countryFlagImageView:Landroid/widget/ImageView;

.field private countryNameText:Landroid/widget/TextView;

.field private rootView:Landroid/widget/LinearLayout;

.field final synthetic this$0:Lcom/floatingtunes/youtubeplayer/topmusic/country/CountriesAdapter;


# direct methods
.method constructor <init>(Lcom/floatingtunes/youtubeplayer/topmusic/country/CountriesAdapter;Landroid/view/View;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/country/CountriesAdapter$ViewHolder;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/country/CountriesAdapter;

    .line 75
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f090083

    .line 76
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/country/CountriesAdapter$ViewHolder;->countryFlagImageView:Landroid/widget/ImageView;

    const p1, 0x7f090084

    .line 77
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/country/CountriesAdapter$ViewHolder;->countryNameText:Landroid/widget/TextView;

    const p1, 0x7f090221

    .line 78
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/country/CountriesAdapter$ViewHolder;->rootView:Landroid/widget/LinearLayout;

    return-void
.end method

.method static synthetic access$000(Lcom/floatingtunes/youtubeplayer/topmusic/country/CountriesAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/country/CountriesAdapter$ViewHolder;->countryNameText:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/floatingtunes/youtubeplayer/topmusic/country/CountriesAdapter$ViewHolder;)Landroid/widget/ImageView;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/country/CountriesAdapter$ViewHolder;->countryFlagImageView:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/floatingtunes/youtubeplayer/topmusic/country/CountriesAdapter$ViewHolder;)Landroid/widget/LinearLayout;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/country/CountriesAdapter$ViewHolder;->rootView:Landroid/widget/LinearLayout;

    return-object p0
.end method
