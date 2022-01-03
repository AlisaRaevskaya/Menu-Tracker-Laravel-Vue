<template>
  <div class="container">
    <!-- <form
      method="POST"
      enctype="multipart/form-data"
      action="/php/runpdf.php"
      id="saveCapture"
    >
      <input type="hidden" name="img_val" id="img_val" value="" />
      <input type="hidden" name="id" id="id" value="" />
      <input type="hidden" name="type" id="type" value="" />
      <input type="hidden" name="slug" id="slug" value="" />
      <input type="hidden" name="l" id="l" value="" />
    </form> -->
    <div class="container-fluid formContainer">
      <form id="loader">
        <div class="print-box">
          <div class="print-outter">
            <div class="print-lines">
              <div class="print-inner">
                <!-- layout -->
                {{getId}}
                <div class="menu-headline">{{menu_name}}</div>
                <div class="menu-bg">{{menu_item.name}}</div>
                {{sections}}
                {{getSections}}
                <!-- layout.end -->
              </div>
            </div>
          </div>
        </div>
      </form>
    </div>
  </div>
  <div class="Action print-hide"></div>
</template>

<script>
import { mapGetters, mapActions } from "vuex";

export default {
  props: {
    menu_item: {},
    menu_name: ""
  },
  data() {
    return {
      sections: [],
      section_items: {},
    }
  },
  methods:{
      ...mapActions("menu_sections", ["getMenuSections"]),
      ...mapActions("menu_sections", ["getAllMenuSections"])
  },
  computed: {
      // ...mapGetters("menu_types", ["getTypeId"]),
    // getSections(){
    //   return this.getAllMenuSections(this.menu_item.id);
    // }
    getSections(){
      // return this.getMenuSections(this.getId);
      return this.getAllMenuSections;
    },
    validId() {
      return /^[1-9]+\d*$/.test(this.strId);
    },
    getId() {
      return parseInt(this.menu_item.id);
    },
  },
  created() {
    this.sections = this.getSections;
  },
   mounted() {
            let id = this.menu_item.id;
            axios.get('api/menu-sections/' + id)
                .then(function (resp) {
                  console.log(resp 
                  + 'result')
                    this.sections = resp.data;
                })
                .catch(function () {
                    alert("Could not load your company")
                });
        },
};
</script>

                <!-- <div class="row">
                  <div class="col-6-sm">
                    <div class="menu_section_left">
                      <div class="menu-section No_Style">
                        <div class="section-title">
                          <h3>Beer</h3>
                        </div>

                        <div class="item-outter No_Style">
                          <div class="item-title">
                            <p>Miller Lite | Bottle</p>
                          </div>
                          <div class="item-desc">
                            <p>Lorem, ipsum dolor.</p>
                          </div>
                          <div class="item-price">
                            <p>6</p>
                          </div>
                        </div>
                        <div class="item-outter No_Style">
                          <div class="item-title">
                            <p>Blue Moon | Bottle</p>
                          </div>
                          <div class="item-price">
                            <p>6</p>
                          </div>
                        </div>
                        <div class="item-outter No_Style">
                          <div class="item-title">
                            <p>Shiner Bock | Bottle</p>
                          </div>
                          <div class="item-price">
                            <p>6</p>
                          </div>
                        </div>
                        <div class="item-outter No_Style">
                          <div class="item-title">
                            <p>Michelob Ultra | Bottle</p>
                          </div>
                          <div class="item-price">
                            <p>6</p>
                          </div>
                        </div>
                        <div class="item-outter No_Style">
                          <div class="item-title">
                            <p>Corona | Bottle</p>
                          </div>
                          <div class="item-price">
                            <p>7</p>
                          </div>
                        </div>
                        <div class="item-outter No_Style">
                          <div class="item-title">
                            <p>Modelo Especial | Bottle</p>
                          </div>
                          <div class="item-price">
                            <p>7</p>
                          </div>
                        </div>
                        <div class="item-outter No_Style">
                          <div class="item-title">
                            <p>Stella Artois | Bottle</p>
                          </div>
                          <div class="item-price">
                            <p>7</p>
                          </div>
                        </div>
                        <div class="item-outter No_Style">
                          <div class="item-title">
                            <p>Paulaner | Bottle</p>
                          </div>
                          <div class="item-price">
                            <p>7</p>
                          </div>
                        </div>
                      </div>
                      <div class="menu-section No_Style">
                        <div class="section-title">
                          <h3>Red</h3>
                        </div>
                        <div class="item-outter No_Style">
                          <div class="item-title">
                            <p>Chehalem Three Vineyard Pinot Noir</p>
                          </div>
                          <div class="item-price">
                            <p>65</p>
                          </div>
                        </div>
                        <div class="item-outter No_Style">
                          <div class="item-title">
                            <p>Da Vinci Chianti Blend</p>
                          </div>
                          <div class="item-price">
                            <p>12 | 40</p>
                          </div>
                        </div>
                        <div class="item-outter No_Style">
                          <div class="item-title">
                            <p>Argyle Pinot Noir</p>
                          </div>
                          <div class="item-price">
                            <p>75</p>
                          </div>
                        </div>
                        <div class="item-outter No_Style">
                          <div class="item-title">
                            <p>Sean Minor Four Bears Cabernet Sauvignon</p>
                          </div>
                          <div class="item-price">
                            <p>14 | 45</p>
                          </div>
                        </div>
                        <div class="item-outter No_Style">
                          <div class="item-title">
                            <p>
                              Barboursville Vineyards Cabernet Sauvignon (L)
                            </p>
                          </div>
                          <div class="item-price">
                            <p>55</p>
                          </div>
                        </div>
                        <div class="item-outter No_Style">
                          <div class="item-title">
                            <p>Santa Cristina Toscana</p>
                          </div>
                          <div class="item-price">
                            <p>13 | 44</p>
                          </div>
                        </div>
                      </div>
                      <div class="menu-section No_Style">
                        <div class="section-title">
                          <h3>White</h3>
                        </div>
                        <div class="item-outter No_Style">
                          <div class="item-title">
                            <p>Barboursville Vineyards Pinot Grigio (L)</p>
                          </div>
                          <div class="item-price">
                            <p>65</p>
                          </div>
                        </div>
                        <div class="item-outter No_Style">
                          <div class="item-title">
                            <p>Sean Minor Four Bears Chardonnay</p>
                          </div>
                          <div class="item-price">
                            <p>13 | 40</p>
                          </div>
                        </div>
                        <div class="item-outter No_Style">
                          <div class="item-title">
                            <p>Barboursville Vineyards Pinot Grigio (L)</p>
                          </div>
                          <div class="item-price">
                            <p>65</p>
                          </div>
                        </div>
                        <div class="item-outter No_Style">
                          <div class="item-title">
                            <p>
                              Chateau Ste. Michelle &amp; Dr. Loosen Eroica
                              Riesling
                            </p>
                          </div>
                          <div class="item-price">
                            <p>70</p>
                          </div>
                        </div>
                        <div class="item-outter No_Style">
                          <div class="item-title">
                            <p>Baileyana Firepeak Chardonnay</p>
                          </div>
                          <div class="item-price">
                            <p>65</p>
                          </div>
                        </div>
                        <div class="item-outter No_Style">
                          <div class="item-title">
                            <p>Erath Pinot Gris</p>
                          </div>
                          <div class="item-price">
                            <p>14 | 40</p>
                          </div>
                        </div>
                        <div class="item-outter No_Style">
                          <div class="item-title">
                            <p>Brancott Estate Sauvignon Blanc</p>
                          </div>
                          <div class="item-price">
                            <p>15 | 45</p>
                          </div>
                        </div>
                      </div>
                      <div class="menu-section No_Style">
                        <div class="section-title">
                          <h3>Rose</h3>
                        </div>
                        <div class="item-outter No_Style">
                          <div class="item-title">
                            <p>A to Z Wineworks Rose Sangiovese</p>
                          </div>
                          <div class="item-price">
                            <p>55</p>
                          </div>
                        </div>
                        <div class="item-outter No_Style">
                          <div class="item-title">
                            <p>
                              Castello Banfi Centine Rose Toscana Sangiovese
                            </p>
                          </div>
                          <div class="item-price">
                            <p>13 | 40</p>
                          </div>
                        </div>
                      </div>
                      <div class="menu-section No_Style">
                        <div class="section-title">
                          <h3>Sparkling</h3>
                        </div>
                        <div class="item-outter No_Style">
                          <div class="item-title">
                            <p>Bellussi Brut Enrico Prosecco Glera</p>
                          </div>
                          <div class="item-price">
                            <p>35</p>
                          </div>
                        </div>
                        <div class="item-outter No_Style">
                          <div class="item-title">
                            <p>Rosatello Sparkling Rose Chardonnay</p>
                          </div>
                          <div class="item-price">
                            <p>45</p>
                          </div>
                        </div>
                        <div class="item-outter No_Style">
                          <div class="item-title">
                            <p>Perrier Jouet Grand Brut Champagne</p>
                          </div>
                          <div class="item-price">
                            <p>175</p>
                          </div>
                        </div>
                        <div class="item-outter No_Style">
                          <div class="item-title">
                            <p>Veuve Clicquot Ponsardin Brut Yellow Label</p>
                          </div>
                          <div class="item-price">
                            <p>210</p>
                          </div>
                        </div>
                        <div class="item-outter No_Style">
                          <div class="item-title">
                            <p>Mumm Napa Brut Prestige Champagne Blend</p>
                          </div>
                          <div class="item-price">
                            <p>21 | 75</p>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="col-6-sm">
                    <div class="menu_section_right">
                      <div class="menu-section No_Style">
                        <div class="section-title">
                          <h3>Beer</h3>
                        </div>

                        <div class="item-outter No_Style">
                          <div class="item-title">
                            <p>Miller Lite | Bottle</p>
                          </div>
                          <div class="item-price">
                            <p>6</p>
                          </div>
                        </div>
                        <div class="item-outter No_Style">
                          <div class="item-title">
                            <p>Blue Moon | Bottle</p>
                          </div>
                          <div class="item-price">
                            <p>6</p>
                          </div>
                        </div>
                        <div class="item-outter No_Style">
                          <div class="item-title">
                            <p>Shiner Bock | Bottle</p>
                          </div>
                          <div class="item-price">
                            <p>6</p>
                          </div>
                        </div>
                        <div class="item-outter No_Style">
                          <div class="item-title">
                            <p>Michelob Ultra | Bottle</p>
                          </div>
                          <div class="item-price">
                            <p>6</p>
                          </div>
                        </div>
                        <div class="item-outter No_Style">
                          <div class="item-title">
                            <p>Corona | Bottle</p>
                          </div>
                          <div class="item-price">
                            <p>7</p>
                          </div>
                        </div>
                        <div class="item-outter No_Style">
                          <div class="item-title">
                            <p>Modelo Especial | Bottle</p>
                          </div>
                          <div class="item-price">
                            <p>7</p>
                          </div>
                        </div>
                        <div class="item-outter No_Style">
                          <div class="item-title">
                            <p>Stella Artois | Bottle</p>
                          </div>
                          <div class="item-price">
                            <p>7</p>
                          </div>
                        </div>
                        <div class="item-outter No_Style">
                          <div class="item-title">
                            <p>Paulaner | Bottle</p>
                          </div>
                          <div class="item-price">
                            <p>7</p>
                          </div>
                        </div>
                      </div>
                      <div class="menu-section No_Style">
                        <div class="section-title">
                          <h3>Red</h3>
                        </div>
                        <div class="item-outter No_Style">
                          <div class="item-title">
                            <p>Chehalem Three Vineyard Pinot Noir</p>
                          </div>
                          <div class="item-price">
                            <p>65</p>
                          </div>
                        </div>
                        <div class="item-outter No_Style">
                          <div class="item-title">
                            <p>Da Vinci Chianti Blend</p>
                          </div>
                          <div class="item-price">
                            <p>12 | 40</p>
                          </div>
                        </div>
                        <div class="item-outter No_Style">
                          <div class="item-title">
                            <p>Argyle Pinot Noir</p>
                          </div>
                          <div class="item-price">
                            <p>75</p>
                          </div>
                        </div>
                        <div class="item-outter No_Style">
                          <div class="item-title">
                            <p>Sean Minor Four Bears Cabernet Sauvignon</p>
                          </div>
                          <div class="item-price">
                            <p>14 | 45</p>
                          </div>
                        </div>
                        <div class="item-outter No_Style">
                          <div class="item-title">
                            <p>
                              Barboursville Vineyards Cabernet Sauvignon (L)
                            </p>
                          </div>
                          <div class="item-price">
                            <p>55</p>
                          </div>
                        </div>
                        <div class="item-outter No_Style">
                          <div class="item-title">
                            <p>Santa Cristina Toscana</p>
                          </div>
                          <div class="item-price">
                            <p>13 | 44</p>
                          </div>
                        </div>
                      </div>
                      <div class="menu-section No_Style">
                        <div class="section-title">
                          <h3>White</h3>
                        </div>
                        <div class="item-outter No_Style">
                          <div class="item-title">
                            <p>Barboursville Vineyards Pinot Grigio (L)</p>
                          </div>
                          <div class="item-price">
                            <p>65</p>
                          </div>
                        </div>
                        <div class="item-outter No_Style">
                          <div class="item-title">
                            <p>Sean Minor Four Bears Chardonnay</p>
                          </div>
                          <div class="item-price">
                            <p>13 | 40</p>
                          </div>
                        </div>
                        <div class="item-outter No_Style">
                          <div class="item-title">
                            <p>Barboursville Vineyards Pinot Grigio (L)</p>
                          </div>
                          <div class="item-price">
                            <p>65</p>
                          </div>
                        </div>
                        <div class="item-outter No_Style">
                          <div class="item-title">
                            <p>
                              Chateau Ste. Michelle &amp; Dr. Loosen Eroica
                              Riesling
                            </p>
                          </div>
                          <div class="item-price">
                            <p>70</p>
                          </div>
                        </div>
                        <div class="item-outter No_Style">
                          <div class="item-title">
                            <p>Baileyana Firepeak Chardonnay</p>
                          </div>
                          <div class="item-price">
                            <p>65</p>
                          </div>
                        </div>
                        <div class="item-outter No_Style">
                          <div class="item-title">
                            <p>Erath Pinot Gris</p>
                          </div>
                          <div class="item-price">
                            <p>14 | 40</p>
                          </div>
                        </div>
                        <div class="item-outter No_Style">
                          <div class="item-title">
                            <p>Brancott Estate Sauvignon Blanc</p>
                          </div>
                          <div class="item-price">
                            <p>15 | 45</p>
                          </div>
                        </div>
                      </div>
                      <div class="menu-section No_Style">
                        <div class="section-title">
                          <h3>Rose</h3>
                        </div>
                        <div class="item-outter No_Style">
                          <div class="item-title">
                            <p>A to Z Wineworks Rose Sangiovese</p>
                          </div>
                          <div class="item-price">
                            <p>55</p>
                          </div>
                        </div>
                        <div class="item-outter No_Style">
                          <div class="item-title">
                            <p>
                              Castello Banfi Centine Rose Toscana Sangiovese
                            </p>
                          </div>
                          <div class="item-price">
                            <p>13 | 40</p>
                          </div>
                        </div>
                      </div>
                      <div class="menu-section No_Style">
                        <div class="section-title">
                          <h3>Sparkling</h3>
                        </div>
                        <div class="item-outter No_Style">
                          <div class="item-title">
                            <p>Bellussi Brut Enrico Prosecco Glera</p>
                          </div>
                          <div class="item-price">
                            <p>35</p>
                          </div>
                        </div>
                        <div class="item-outter No_Style">
                          <div class="item-title">
                            <p>Rosatello Sparkling Rose Chardonnay</p>
                          </div>
                          <div class="item-price">
                            <p>45</p>
                          </div>
                        </div>
                        <div class="item-outter No_Style">
                          <div class="item-title">
                            <p>Perrier Jouet Grand Brut Champagne</p>
                          </div>
                          <div class="item-price">
                            <p>175</p>
                          </div>
                        </div>
                        <div class="item-outter No_Style">
                          <div class="item-title">
                            <p>Veuve Clicquot Ponsardin Brut Yellow Label</p>
                          </div>
                          <div class="item-price">
                            <p>210</p>
                          </div>
                        </div>
                        <div class="item-outter No_Style">
                          <div class="item-title">
                            <p>Mumm Napa Brut Prestige Champagne Blend</p>
                          </div>
                          <div class="item-price">
                            <p>21 | 75</p>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div> -->