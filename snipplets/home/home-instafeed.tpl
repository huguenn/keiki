{% if settings.show_instafeed and store.instagram %}
    <section class="section-instafeed-home" data-store="instagram-feed">
        <div class="container">
            <div class="row">
                {% set instuser = store.instagram|split('/')|last %}
                <div class="col-12 text-center">
                    <a target="_blank" href="{{ store.instagram }}" class="mb-0" aria-label="{{ 'Instagram de' | translate }} {{ store.name }}">
                        <div class="instafeed-title{% if settings.theme_rounded %} svg-icon-primary{% else %} svg-icon-text{% endif %} mb-0">
                            {% include "snipplets/svg/instagram.tpl" with {svg_custom_class: "icon-inline h1 mt-md-1 mr-1"} %} 
                            <h3 class="h1-md instafeed-user{% if settings.theme_rounded %} text-primary{% endif %} mb-0">{{ instuser }}</h3>
                        </div>
                        
                        {# Instagram fallback info in case feed fails to load #}
                        <div class="js-ig-fallback">
                            <h5 class="font-weight-normal mb-3">{{ 'Estamos en Instagram' | translate }}</h5>
                            <span class="btn btn-secondary btn-small px-4">{{ 'Seguinos' | translate }}</span>
                        </div>
                    </a>
                </div>
            </div>
        </div>
        <div id="instafeed" class="js-ig-success row no-gutters mt-3" style="display: none;">  
        </div>
    </section>
{% endif %}