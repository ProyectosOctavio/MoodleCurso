<?php

class __Mustache_acb74cf2b39831e2bcb8a97c433ff37d extends Mustache_Template
{
    public function renderInternal(Mustache_Context $context, $indent = '')
    {
        $buffer = '';

        if ($partial = $this->mustache->loadPartial('core_form/element-selectgroups')) {
            $buffer .= $partial->renderInternal($context);
        }

        return $buffer;
    }
}
