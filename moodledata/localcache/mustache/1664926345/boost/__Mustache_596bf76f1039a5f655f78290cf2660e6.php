<?php

class __Mustache_596bf76f1039a5f655f78290cf2660e6 extends Mustache_Template
{
    public function renderInternal(Mustache_Context $context, $indent = '')
    {
        $buffer = '';

        if ($partial = $this->mustache->loadPartial('core_form/element-selectgroups-inline')) {
            $buffer .= $partial->renderInternal($context);
        }

        return $buffer;
    }
}
